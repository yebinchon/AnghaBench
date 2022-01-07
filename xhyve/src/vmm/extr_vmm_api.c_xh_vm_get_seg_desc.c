
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_desc {int access; int limit; int base; } ;


 int xh_vm_get_desc (int,int,int *,int *,int *) ;

int
xh_vm_get_seg_desc(int vcpu, int reg, struct seg_desc *seg_desc)
{
 int error;

 error = xh_vm_get_desc(vcpu, reg, &seg_desc->base, &seg_desc->limit,
  &seg_desc->access);

 return (error);
}
