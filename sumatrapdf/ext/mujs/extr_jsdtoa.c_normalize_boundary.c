
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; scalar_t__ e; } ;
typedef TYPE_1__ diy_fp_t ;


 int DIY_SIGNIFICAND_SIZE ;
 int DP_HIDDEN_BIT ;
 int DP_SIGNIFICAND_SIZE ;

__attribute__((used)) static diy_fp_t normalize_boundary(diy_fp_t in)
{
 diy_fp_t res = in;


 while (! (res.f & (DP_HIDDEN_BIT << 1))) {
  res.f <<= 1;
  res.e--;
 }

 res.f <<= (DIY_SIGNIFICAND_SIZE - DP_SIGNIFICAND_SIZE - 2);
 res.e = res.e - (DIY_SIGNIFICAND_SIZE - DP_SIGNIFICAND_SIZE - 2);
 return res;
}
