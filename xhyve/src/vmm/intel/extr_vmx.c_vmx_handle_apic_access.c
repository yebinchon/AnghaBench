
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vmx {int dummy; } ;
struct TYPE_3__ {int exit_qualification; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {TYPE_2__ u; } ;


 int APIC_ACCESS_OFFSET (int ) ;
 int APIC_ACCESS_TYPE (int ) ;
 scalar_t__ DEFAULT_APIC_BASE ;
 int UNHANDLED ;
 int VIE_INVALID_GLA ;
 int apic_access_virtualization (struct vmx*,int) ;
 int vmexit_inst_emul (struct vm_exit*,scalar_t__,int ,int) ;

__attribute__((used)) static int
vmx_handle_apic_access(struct vmx *vmx, int vcpuid, struct vm_exit *vmexit)
{
 uint64_t qual;
 int access_type, offset, allowed;

 if (!apic_access_virtualization(vmx, vcpuid))
  return (UNHANDLED);

 qual = vmexit->u.vmx.exit_qualification;
 access_type = APIC_ACCESS_TYPE(qual);
 offset = APIC_ACCESS_OFFSET(qual);

 allowed = 0;
 if (access_type == 0) {



  switch (offset) {
  case 157:
  case 139:
  case 138:
  case 156:
  case 137:
   allowed = 1;
   break;
  default:
   break;
  }
 } else if (access_type == 1) {



  switch (offset) {
  case 128:
  case 157:
  case 139:
  case 138:
  case 147:
  case 146:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 140:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
  case 149:
  case 148:
  case 156:
  case 137:
   allowed = 1;
   break;
  default:
   break;
  }
 }

 if (allowed) {
  vmexit_inst_emul(vmexit, DEFAULT_APIC_BASE + ((uint32_t) offset),
      VIE_INVALID_GLA, vcpuid);
 }
 return (UNHANDLED);
}
