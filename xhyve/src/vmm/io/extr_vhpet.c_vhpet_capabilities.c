
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FS_PER_S ;
 scalar_t__ HPET_CAP_COUNT_SIZE ;
 int HPET_FREQ ;
 int VHPET_NUM_TIMERS ;

__attribute__((used)) static uint64_t
vhpet_capabilities(void)
{
 uint64_t cap = 0;

 cap |= ((uint64_t) 0x8086) << 16;
 cap |= ((uint64_t) (VHPET_NUM_TIMERS - 1)) << 8;
 cap |= (uint64_t) 1;
 cap &= ~((uint64_t) HPET_CAP_COUNT_SIZE);
 cap &= (uint64_t) 0xffffffff;
 cap |= ((uint64_t) (FS_PER_S / HPET_FREQ)) << 32;

 return (cap);
}
