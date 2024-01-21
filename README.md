# Rclone Automount Script for Windows

Rclone is an extremely powerful command-line program to manage files
on cloud storages. However, on Windows it is surprisingly difficult
to set up a CLI application to run commands at startup/login without
popping up an unpleasant and unsettling Powershell/cmd window.

This simple Visual Basic Script will execute the inserted rclone mount
commands in a graceful manner, completely silently. It is ideal to be
set up as an autostart item, and automatically mount all needed cloud
folders, at system boot or user login, seamlessly.

## Instructions

Follow the instructions in the file comments and insert as many
rclone commands as you wish. After that, set the file to autostart
in one of several possible ways (startup directories, registry,
Task Scheduler).

## Other

Tested on Windows 11 with rclone v1.65.1.

[Get rclone (not affiliated)](https://rclone.org/downloads/)

**[Contact](mailto:lcs_it@proton.me)**

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
