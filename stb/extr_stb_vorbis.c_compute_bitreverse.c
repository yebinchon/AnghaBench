
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int bit_reverse (int) ;
 int ilog (int) ;

__attribute__((used)) static void compute_bitreverse(int n, uint16 *rev)
{
   int ld = ilog(n) - 1;
   int i, n8 = n >> 3;
   for (i=0; i < n8; ++i)
      rev[i] = (bit_reverse(i) >> (32-ld+3)) << 2;
}
