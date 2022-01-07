
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 size_t size_for_max_number (int ) ;

size_t size_for_max_number_aligned(uint32 number)
{
   size_t n = size_for_max_number(number);
   return n == 3 ? 4 : n;
}
