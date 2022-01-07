
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vmx {TYPE_1__* cap; } ;
struct TYPE_2__ {int set; scalar_t__ proc_ctls; } ;


 int ENOENT ;
 scalar_t__ PROCBASED_HLT_EXITING ;
 scalar_t__ PROCBASED_MTF ;
 scalar_t__ PROCBASED_PAUSE_EXITING ;
 scalar_t__ VMCS_PRI_PROC_BASED_CTLS ;



 int cap_halt_exit ;
 int cap_monitor_trap ;
 int cap_pause_exit ;
 int vmcs_write (int,scalar_t__,scalar_t__) ;
 int xhyve_abort (char*) ;

__attribute__((used)) static int
vmx_setcap(void *arg, int vcpu, int type, int val)
{
 struct vmx *vmx = arg;
 uint32_t baseval;
 uint32_t *pptr;
 uint32_t reg;
 uint32_t flag;
 int retval;

 retval = ENOENT;
 pptr = ((void*)0);
 baseval = 0;
 reg = 0;
 flag = 0;

 switch (type) {
 case 130:
  if (cap_halt_exit) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_HLT_EXITING;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 case 129:
  if (cap_monitor_trap) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_MTF;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 case 128:
  if (cap_pause_exit) {
   retval = 0;
   pptr = &vmx->cap[vcpu].proc_ctls;
   baseval = *pptr;
   flag = PROCBASED_PAUSE_EXITING;
   reg = VMCS_PRI_PROC_BASED_CTLS;
  }
  break;
 default:
  xhyve_abort("vmx_setcap\n");
 }

 if (retval == 0) {
  if (val) {
   baseval |= flag;
  } else {
   baseval &= ~flag;
  }

  vmcs_write(vcpu, reg, baseval);





  if (pptr != ((void*)0)) {
   *pptr = baseval;
  }

  if (val) {
   vmx->cap[vcpu].set |= (1 << type);
  } else {
   vmx->cap[vcpu].set &= ~(1 << type);
  }

 }

 return (retval);
}
