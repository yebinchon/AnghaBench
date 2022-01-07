
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARM_UDIVRESULT ;


 int __rt_udiv_internal (int *,unsigned int,unsigned int) ;

ARM_UDIVRESULT
__rt_udiv(
    unsigned int divisor,
    unsigned int dividend)
{
    ARM_UDIVRESULT result;

    __rt_udiv_internal(&result, divisor, dividend);
    return result;
}
