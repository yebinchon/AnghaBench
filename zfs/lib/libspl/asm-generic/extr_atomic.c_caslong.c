
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;


 int atomic_cas_ulong (int *,int ,int ) ;

ulong_t
caslong(ulong_t *target, ulong_t arg1, ulong_t arg2)
{
 return (atomic_cas_ulong(target, arg1, arg2));
}
