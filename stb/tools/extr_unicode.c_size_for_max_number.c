
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



size_t size_for_max_number(uint32 number)
{
   if (number == 0) return 0;
   if (number < 256) return 1;
   if (number < 256*256) return 2;
   if (number < 256*256*256) return 3;
   return 4;
}
