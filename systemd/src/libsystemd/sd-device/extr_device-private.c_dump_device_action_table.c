
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_STRING_TABLE (int ,int ,int ) ;
 int DeviceAction ;
 int _DEVICE_ACTION_MAX ;
 int device_action ;

void dump_device_action_table(void) {
        DUMP_STRING_TABLE(device_action, DeviceAction, _DEVICE_ACTION_MAX);
}
