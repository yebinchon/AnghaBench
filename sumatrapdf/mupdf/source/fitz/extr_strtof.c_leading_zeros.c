
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* clz_table ;

__attribute__((used)) static unsigned
leading_zeros (uint32_t x)
{
 unsigned tmp1, tmp2;

 tmp1 = x >> 16;
 if (tmp1)
 {
  tmp2 = tmp1 >> 8;
  if (tmp2)
   return clz_table[tmp2];
  else
   return 8 + clz_table[tmp1];
 }
 else
 {
  tmp1 = x >> 8;
  if (tmp1)
   return 16 + clz_table[tmp1];
  else
   return 24 + clz_table[x];
 }
}
