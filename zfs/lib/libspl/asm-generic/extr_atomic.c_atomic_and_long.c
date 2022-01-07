
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;


 void atomic_and_ulong (int *,int ) ;

void
atomic_and_long(ulong_t *target, ulong_t bits)
{
 return (atomic_and_ulong(target, bits));
}
