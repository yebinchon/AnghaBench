
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int vcpu_create (int *,int) ;
 int * vm ;

int
xh_vcpu_create(int vcpu)
{
 assert(vm != ((void*)0));
 return (vcpu_create(vm, vcpu));
}
