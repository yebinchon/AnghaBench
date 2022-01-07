
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int vm ;
 int vrtc_get_time (int ) ;

int
xh_vm_rtc_gettime(time_t *secs)
{
 *secs = vrtc_get_time(vm);
 return (0);
}
