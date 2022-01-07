
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int atomic_cas_32 (int *,int ,int ) ;

uint32_t
cas32(uint32_t *target, uint32_t arg1, uint32_t arg2)
{
 return (atomic_cas_32(target, arg1, arg2));
}
