
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {unsigned int f; unsigned int e; int member_1; int member_0; } ;
typedef TYPE_1__ strtof_fp_t ;


 unsigned int leading_zeros (int ) ;

__attribute__((used)) static strtof_fp_t
uint32_to_diy (uint32_t x)
{
 strtof_fp_t result = {x, 0};
 unsigned shift = leading_zeros(x);

 result.f <<= shift;
 result.e -= shift;
 return result;
}
