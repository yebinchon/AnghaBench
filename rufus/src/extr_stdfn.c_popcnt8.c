
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t popcnt8(uint8_t val)
{
 static const uint8_t nibble_lookup[16] = {
  0, 1, 1, 2, 1, 2, 2, 3,
  1, 2, 2, 3, 2, 3, 3, 4
 };
 return nibble_lookup[val & 0x0F] + nibble_lookup[val >> 4];
}
