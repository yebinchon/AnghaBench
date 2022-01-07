
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t MSize ;


 int lj_fls (int) ;
 int* ndigits_dec_threshold ;

__attribute__((used)) static MSize ndigits_dec(uint32_t x)
{
  MSize t = ((lj_fls(x | 1) * 77) >> 8) + 1;
  return t + (x > ndigits_dec_threshold[t]);
}
