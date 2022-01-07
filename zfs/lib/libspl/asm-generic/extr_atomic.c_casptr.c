
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* atomic_cas_ptr (void*,void*,void*) ;

void *
casptr(void *target, void *arg1, void *arg2)
{
 return (atomic_cas_ptr(target, arg1, arg2));
}
