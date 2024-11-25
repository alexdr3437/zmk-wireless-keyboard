# SPDX-License-Identifier: MIT

board_runner_args(jlink "--device=nrf52" "--speed=4000")
board_runner_args(nrfjprog "--nrf-family=NRF52" "--softreset")
include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
