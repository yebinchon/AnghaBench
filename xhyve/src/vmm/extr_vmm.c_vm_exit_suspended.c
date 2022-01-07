
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int how; } ;
struct TYPE_4__ {TYPE_1__ suspended; } ;
struct vm_exit {TYPE_2__ u; int exitcode; scalar_t__ inst_length; int rip; } ;
struct vm {scalar_t__ suspend; } ;
typedef enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;


 int KASSERT (int,char*) ;
 int VM_EXITCODE_SUSPENDED ;
 scalar_t__ VM_SUSPEND_LAST ;
 scalar_t__ VM_SUSPEND_NONE ;
 struct vm_exit* vm_exitinfo (struct vm*,int) ;

void
vm_exit_suspended(struct vm *vm, int vcpuid, uint64_t rip)
{
 struct vm_exit *vmexit;

 KASSERT(vm->suspend > VM_SUSPEND_NONE && vm->suspend < VM_SUSPEND_LAST,
     ("vm_exit_suspended: invalid suspend type %d", vm->suspend));

 vmexit = vm_exitinfo(vm, vcpuid);
 vmexit->rip = rip;
 vmexit->inst_length = 0;
 vmexit->exitcode = VM_EXITCODE_SUSPENDED;
 vmexit->u.suspended.how = (enum vm_suspend_how) vm->suspend;
}
