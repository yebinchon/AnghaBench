
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_desc {int access; int limit; int base; } ;


 int assert (int) ;
 int xh_vm_set_desc (int,int,int ,int ,int ) ;

__attribute__((used)) static void
update_seg_desc(int vcpu, int reg, struct seg_desc *sd)
{
 int error;

 error = xh_vm_set_desc(vcpu, reg, sd->base, sd->limit, sd->access);
 assert(error == 0);
}
