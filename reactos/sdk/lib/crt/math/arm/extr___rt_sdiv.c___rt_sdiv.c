
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARM_DIVRESULT ;


 int __rt_sdiv_worker (int *,int,int) ;

ARM_DIVRESULT
__rt_sdiv(
    int divisor,
    int dividend)
{
    ARM_DIVRESULT result;

    __rt_sdiv_worker(&result, divisor, dividend);
    return result;
}
