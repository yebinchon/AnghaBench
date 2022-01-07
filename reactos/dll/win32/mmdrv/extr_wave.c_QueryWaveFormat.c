
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int DeviceType ;
typedef int DWORD ;


 int WAVERR_BADFORMAT ;

DWORD
QueryWaveFormat(
    DeviceType device_type,
    PVOID lpFormat)
{

    return WAVERR_BADFORMAT;
}
