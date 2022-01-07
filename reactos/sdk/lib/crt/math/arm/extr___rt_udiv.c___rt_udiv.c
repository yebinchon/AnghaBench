
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARM_DIVRESULT ;


 int __rt_udiv_worker (int *,unsigned int,unsigned int) ;

ARM_DIVRESULT
__rt_udiv(
    unsigned int divisor,
    unsigned int dividend)
{
    ARM_DIVRESULT result;

    __rt_udiv_worker(&result, divisor, dividend);
    return result;
}
