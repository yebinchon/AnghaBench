
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t
cdio_to_bcd8 (uint8_t n)
{


  return ((n/10)<<4) | (n%10);
}
