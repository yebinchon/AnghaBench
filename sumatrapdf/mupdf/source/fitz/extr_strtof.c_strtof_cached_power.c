
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e; int f; } ;
typedef TYPE_1__ strtof_fp_t ;


 int assert (int) ;
 int * strtof_powers_ten ;
 int * strtof_powers_ten_e ;

__attribute__((used)) static strtof_fp_t
strtof_cached_power(int i)
{
 strtof_fp_t result;
 assert (i >= 0 && i <= 54);
 result.f = strtof_powers_ten[i];
 result.e = strtof_powers_ten_e[i];
 return result;
}
