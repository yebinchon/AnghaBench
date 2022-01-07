
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELEMETRY_HOST ;
 int TELEMETRY_PATH ;
 int TELEMETRY_SCHEME ;
 int ts_telemetry_main (int ,int ,int ) ;

bool
ts_telemetry_main_wrapper()
{
 return ts_telemetry_main(TELEMETRY_HOST, TELEMETRY_PATH, TELEMETRY_SCHEME);
}
