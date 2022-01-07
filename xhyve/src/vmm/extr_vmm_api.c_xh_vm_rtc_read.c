
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int vm ;
 int vrtc_nvram_read (int ,int,int *) ;

int
xh_vm_rtc_read(int offset, uint8_t *retval)
{
 return (vrtc_nvram_read(vm, offset, retval));
}
