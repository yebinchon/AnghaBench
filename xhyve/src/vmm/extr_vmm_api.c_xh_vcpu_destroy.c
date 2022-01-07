
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int vcpu_destroy (int *,int) ;
 int * vm ;

void
xh_vcpu_destroy(int vcpu)
{
 assert(vm != ((void*)0));
 vcpu_destroy(vm, vcpu);
}
