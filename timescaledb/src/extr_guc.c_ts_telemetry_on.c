
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ on_level ;
 scalar_t__ ts_guc_telemetry_level ;

bool
ts_telemetry_on()
{
 return ts_guc_telemetry_level == on_level;
}
