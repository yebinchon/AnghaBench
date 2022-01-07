
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int exit_reason; int exit_qualification; int inst_type; int inst_error; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {int rip; int inst_length; TYPE_2__ u; } ;


 int VMEXIT_ABORT ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
vmexit_vmx(struct vm_exit *vme, int *pvcpu)
{
 fprintf(stderr, "vm exit[%d]\n", *pvcpu);
 fprintf(stderr, "\treason\t\tVMX\n");
 fprintf(stderr, "\trip\t\t0x%016llx\n", vme->rip);
 fprintf(stderr, "\tinst_length\t%d\n", vme->inst_length);
 fprintf(stderr, "\tstatus\t\t%d\n", vme->u.vmx.status);
 fprintf(stderr, "\texit_reason\t%u\n", vme->u.vmx.exit_reason);
 fprintf(stderr, "\tqualification\t0x%016llx\n",
     vme->u.vmx.exit_qualification);
 fprintf(stderr, "\tinst_type\t\t%d\n", vme->u.vmx.inst_type);
 fprintf(stderr, "\tinst_error\t\t%d\n", vme->u.vmx.inst_error);
 return (VMEXIT_ABORT);
}
