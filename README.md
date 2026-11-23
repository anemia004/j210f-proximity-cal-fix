# SM-J210F CM36672P Proximity Calibration Fix

Magisk module (also flashable in TWRP) by **anemia004** for the Samsung Galaxy J2 2016 (**SM-J210F** / `j3xlte`) running AOSP/LineageOS-based ROMs.

## What It Fixes
Writes the 16-bit little-endian crosstalk cancellation offset (`0x07bc` / `1980`) to `/efs/FactoryApp/prox_cal` on boot (`post-fs-data.sh`) with proper ownership (`system:system`), permissions (`0600`), and SELinux context (`restorecon`). This restores normal near/far proximity behavior during calls without disabling the sensor.

## Installation
1. Download the latest `.zip` from [Releases](https://github.com/anemia004/j210f-proximity-cal-fix/releases).
2. Flash in **Magisk Manager → Modules → Install from storage** (or TWRP).
3. Reboot.
