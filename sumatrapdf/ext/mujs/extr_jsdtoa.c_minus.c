
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ e; scalar_t__ f; } ;
typedef TYPE_1__ diy_fp_t ;


 int assert (int) ;

__attribute__((used)) static diy_fp_t minus(diy_fp_t x, diy_fp_t y)
{
 diy_fp_t r;
 assert(x.e == y.e);
 assert(x.f >= y.f);
 r.f = x.f - y.f;
 r.e = x.e;
 return r;
}
