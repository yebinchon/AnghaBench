
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ f; scalar_t__ member_0; scalar_t__ e; scalar_t__ member_1; } ;
typedef TYPE_1__ diy_fp_t ;


 int assert (int) ;

__attribute__((used)) static diy_fp_t
minus(diy_fp_t x, diy_fp_t y)
{
 diy_fp_t result = {x.f - y.f, x.e};
 assert(x.e == y.e && x.f >= y.f);
 return result;
}
