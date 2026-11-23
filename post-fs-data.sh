#!/system/bin/sh
CAL="/efs/FactoryApp/prox_cal"

if [ -d /efs/FactoryApp ]; then
  printf '\274\007' > "$CAL"
  chown system:system "$CAL" 2>/dev/null || chown 1000:1000 "$CAL" 2>/dev/null
  chmod 600 "$CAL"
  restorecon "$CAL" 2>/dev/null
fi
