
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e; int f; } ;
typedef TYPE_1__ diy_fp_t ;


 int assert (int) ;
 int * powers_ten ;
 int * powers_ten_e ;

__attribute__((used)) static diy_fp_t
cached_power(int i)
{
 diy_fp_t result;

 assert (i >= -37 && i <= 46);
 result.f = powers_ten[i + 37];
 result.e = powers_ten_e[i + 37];
 return result;
}
