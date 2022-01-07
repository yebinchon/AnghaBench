
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e; int f; } ;
typedef TYPE_1__ diy_fp_t ;


 int * powers_ten ;
 int * powers_ten_e ;

__attribute__((used)) static diy_fp_t cached_power(int k)
{
 diy_fp_t res;
 int index = 343 + k;
 res.f = powers_ten[index];
 res.e = powers_ten_e[index];
 return res;
}
