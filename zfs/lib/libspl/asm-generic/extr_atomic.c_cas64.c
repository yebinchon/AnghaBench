
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int atomic_cas_64 (int *,int ,int ) ;

uint64_t
cas64(uint64_t *target, uint64_t arg1, uint64_t arg2)
{
 return (atomic_cas_64(target, arg1, arg2));
}
