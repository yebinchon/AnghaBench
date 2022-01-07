
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int vm ;
 int vrtc_nvram_write (int ,int,int ) ;

int
xh_vm_rtc_write(int offset, uint8_t value)
{
 return (vrtc_nvram_write(vm, offset, value));
}
