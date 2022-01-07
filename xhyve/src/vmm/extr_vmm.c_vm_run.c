
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rflags; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_6__ {TYPE_2__ hlt; TYPE_1__ ioapic_eoi; } ;
struct vm_exit {unsigned int rip; TYPE_3__ u; scalar_t__ exitcode; scalar_t__ inst_length; } ;
struct vm {int cookie; struct vcpu* vcpu; int suspend; int rendezvous_func; int suspended_cpus; int active_cpus; } ;
struct vcpu {unsigned int nextrip; struct vm_exit exitinfo; } ;
typedef int register_t ;


 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int EINVAL ;
 int PSL_I ;
 int VCPU_FROZEN ;
 int VCPU_RUNNING ;
 int VMRUN (int ,int,int ,void*,void*) ;
 int VM_MAXCPU ;
 int bcopy (struct vm_exit*,struct vm_exit*,int) ;
 int vcpu_require_state (struct vm*,int,int ) ;
 int vioapic_process_eoi (struct vm*,int,int ) ;
 int vm_handle_hlt (struct vm*,int,int) ;
 int vm_handle_inout (struct vm*,int,struct vm_exit*,int*) ;
 int vm_handle_inst_emul (struct vm*,int,int*) ;
 int vm_handle_rendezvous (struct vm*,int) ;
 int vm_handle_suspend (struct vm*,int,int*) ;
 int vm_inject_ud (struct vm*,int) ;

int
vm_run(struct vm *vm, int vcpuid, struct vm_exit *vm_exit)
{
 int error;
 struct vcpu *vcpu;

 struct vm_exit *vme;
 bool retu, intr_disabled;
 void *rptr, *sptr;

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  return (EINVAL);

 if (!CPU_ISSET(((unsigned) vcpuid), &vm->active_cpus))
  return (EINVAL);

 if (CPU_ISSET(((unsigned) vcpuid), &vm->suspended_cpus))
  return (EINVAL);

 rptr = &vm->rendezvous_func;
 sptr = &vm->suspend;
 vcpu = &vm->vcpu[vcpuid];
 vme = &vcpu->exitinfo;
 retu = 0;

restart:


 vcpu_require_state(vm, vcpuid, VCPU_RUNNING);
 error = VMRUN(vm->cookie, vcpuid, (register_t) vcpu->nextrip, rptr, sptr);
 vcpu_require_state(vm, vcpuid, VCPU_FROZEN);




 if (error == 0) {
  retu = 0;
  vcpu->nextrip = vme->rip + ((unsigned) vme->inst_length);
  switch (((int) (vme->exitcode))) {
  case 128:
   error = vm_handle_suspend(vm, vcpuid, &retu);
   break;
  case 133:
   vioapic_process_eoi(vm, vcpuid,
       vme->u.ioapic_eoi.vector);
   break;
  case 129:
   vm_handle_rendezvous(vm, vcpuid);
   error = 0;
   break;
  case 137:
   intr_disabled = ((vme->u.hlt.rflags & PSL_I) == 0);
   error = vm_handle_hlt(vm, vcpuid, intr_disabled);
   break;
  case 130:
   error = 0;
   break;
  case 134:
   error = vm_handle_inst_emul(vm, vcpuid, &retu);
   break;
  case 136:
  case 135:
   error = vm_handle_inout(vm, vcpuid, vme, &retu);
   break;
  case 132:
  case 131:
   vm_inject_ud(vm, vcpuid);
   break;
  default:
   retu = 1;
   break;
  }
 }

 if (error == 0 && retu == 0)
  goto restart;


 bcopy(vme, vm_exit, sizeof(struct vm_exit));
 return (error);
}
