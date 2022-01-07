
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; int port; scalar_t__ rep; scalar_t__ string; } ;
struct TYPE_4__ {TYPE_1__ inout; } ;
struct vm_exit {TYPE_2__ u; } ;
struct vm {int dummy; } ;


 int KASSERT (int,char*) ;
 int VCPU_CTR4 (struct vm*,int,char*,char*,int ,int ,char*) ;
 int emulate_inout_port (struct vm*,int,struct vm_exit*,int*) ;
 int emulate_inout_str (int*) ;
 int inout_instruction (struct vm_exit*) ;

int
vm_handle_inout(struct vm *vm, int vcpuid, struct vm_exit *vmexit, bool *retu)
{
 int bytes, error;

 bytes = vmexit->u.inout.bytes;
 KASSERT(bytes == 1 || bytes == 2 || bytes == 4,
     ("vm_handle_inout: invalid operand size %d", bytes));

 if (vmexit->u.inout.string)
  error = emulate_inout_str(retu);
 else
  error = emulate_inout_port(vm, vcpuid, vmexit, retu);
 return (error);
}
