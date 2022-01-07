
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcLzxcControlData {int size; int version; int resetInterval; int windowSize; int windowsPerReset; scalar_t__ unknown_18; int signature; } ;


 int memcpy (int ,char*,int) ;

void chmc_control_data_init(struct chmcLzxcControlData *control_data)
{
 control_data->size = 6;
 memcpy(control_data->signature, "LZXC", 4);
 control_data->version = 2;
 control_data->resetInterval = 2;
 control_data->windowSize = 2;
 control_data->windowsPerReset = 1;
 control_data->unknown_18 = 0;
}
