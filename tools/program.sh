#!/bin/zsh

while ! blkid | grep "FTHR840BOOT" | awk -F':' '{print $1}' | xargs -l bash -c 'mount $0 /media/alex'
do
    blkid | grep $words | awk -F':' '{print $1}' | cat
    echo "Waiting for the USB to be mounted"
    sleep 1
done

echo "USB mounted"

sudo cp build/zephyr/zmk.uf2 /media/alex/
sudo umount /media/alex

echo "Done"
