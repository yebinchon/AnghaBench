
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static unsigned
calculate_mask_weight(uint32 mask)
{
 unsigned weight = 0;
 do
 {
  weight += (mask & 1);
 }
 while (mask >>= 1);
 return weight;
}
