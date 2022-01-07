
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int vm ;
 int vrtc_set_time (int ,int ) ;

int
xh_vm_rtc_settime(time_t secs)
{
 return (vrtc_set_time(vm, secs));
}
