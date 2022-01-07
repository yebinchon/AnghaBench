
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; int wval; } ;
struct TYPE_3__ {TYPE_2__ msr; } ;
struct vm_exit {TYPE_1__ u; } ;


 int VMEXIT_CONTINUE ;
 int emulate_wrmsr (int,int,int ) ;
 int fprintf (int ,char*,int,int ,int) ;
 int stderr ;
 scalar_t__ strictmsr ;
 int vm_inject_gp (int) ;

__attribute__((used)) static int
vmexit_wrmsr(struct vm_exit *vme, int *pvcpu)
{
 int error;

 error = emulate_wrmsr(*pvcpu, vme->u.msr.code, vme->u.msr.wval);
 if (error != 0) {
  fprintf(stderr, "wrmsr to register %#x(%#llx) on vcpu %d\n",
      vme->u.msr.code, vme->u.msr.wval, *pvcpu);
  if (strictmsr) {
   vm_inject_gp(*pvcpu);
   return (VMEXIT_CONTINUE);
  }
 }
 return (VMEXIT_CONTINUE);
}
