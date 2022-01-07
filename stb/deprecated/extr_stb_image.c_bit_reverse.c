
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int bitreverse16 (int) ;

__attribute__((used)) static int bit_reverse(int v, int bits)
{
   assert(bits <= 16);


   return bitreverse16(v) >> (16-bits);
}
