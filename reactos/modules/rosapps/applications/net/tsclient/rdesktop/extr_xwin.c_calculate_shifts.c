
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int ffs (int) ;

__attribute__((used)) static void
calculate_shifts(uint32 mask, int *shift_r, int *shift_l)
{
 *shift_l = ffs(mask) - 1;
 mask >>= *shift_l;
 *shift_r = 8 - ffs(mask & ~(mask >> 1));
}
