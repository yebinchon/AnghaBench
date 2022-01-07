
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct vm_guest_paging {int cpu_mode; } ;
struct TYPE_3__ {int vie; int cs_d; void* cs_base; void* gla; void* gpa; struct vm_guest_paging paging; } ;
struct TYPE_4__ {TYPE_1__ inst_emul; } ;
struct vm_exit {TYPE_2__ u; int exitcode; } ;






 int SEG_DESC_DEF32 (int ) ;
 int VMCS_GUEST_CS_ACCESS_RIGHTS ;
 int VMCS_GUEST_CS_BASE ;
 int VM_EXITCODE_INST_EMUL ;
 int vie_init (int *,int *,int ) ;
 void* vmcs_read (int,int ) ;
 int vmx_paging_info (struct vm_guest_paging*,int) ;

__attribute__((used)) static void
vmexit_inst_emul(struct vm_exit *vmexit, uint64_t gpa, uint64_t gla, int vcpu)
{
 struct vm_guest_paging *paging;
 uint32_t csar;

 paging = &vmexit->u.inst_emul.paging;

 vmexit->exitcode = VM_EXITCODE_INST_EMUL;
 vmexit->u.inst_emul.gpa = gpa;
 vmexit->u.inst_emul.gla = gla;
 vmx_paging_info(paging, vcpu);
 switch (paging->cpu_mode) {
 case 128:
  vmexit->u.inst_emul.cs_base = vmcs_read(vcpu, VMCS_GUEST_CS_BASE);
  vmexit->u.inst_emul.cs_d = 0;
  break;
 case 129:
 case 130:
  vmexit->u.inst_emul.cs_base = vmcs_read(vcpu, VMCS_GUEST_CS_BASE);
  csar = (uint32_t) vmcs_read(vcpu, VMCS_GUEST_CS_ACCESS_RIGHTS);
  vmexit->u.inst_emul.cs_d = SEG_DESC_DEF32(csar);
  break;
 case 131:
  vmexit->u.inst_emul.cs_base = 0;
  vmexit->u.inst_emul.cs_d = 0;
  break;
 }
 vie_init(&vmexit->u.inst_emul.vie, ((void*)0), 0);
}
