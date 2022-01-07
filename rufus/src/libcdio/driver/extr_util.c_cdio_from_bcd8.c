
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t
cdio_from_bcd8(uint8_t p)
{
  return (0xf & p)+(10*(p >> 4));
}
