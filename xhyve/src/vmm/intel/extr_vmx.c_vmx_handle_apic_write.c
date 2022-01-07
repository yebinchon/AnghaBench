
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vmx {int dummy; } ;
struct vlapic {scalar_t__ apic_page; } ;
 int APIC_OFFSET_SELF_IPI ;





 int APIC_WRITE_OFFSET (int ) ;
 int HANDLED ;
 int UNHANDLED ;
 int apic_access_virtualization (struct vmx*,int) ;
 int vlapic_dcr_write_handler (struct vlapic*) ;
 int vlapic_dfr_write_handler (struct vlapic*) ;
 int vlapic_esr_write_handler (struct vlapic*) ;
 int vlapic_icrlo_write_handler (struct vlapic*,int*) ;
 int vlapic_icrtmr_write_handler (struct vlapic*) ;
 int vlapic_id_write_handler (struct vlapic*) ;
 int vlapic_ldr_write_handler (struct vlapic*) ;
 int vlapic_lvt_write_handler (struct vlapic*,int ) ;
 int vlapic_self_ipi_handler (struct vlapic*,int ) ;
 int vlapic_svr_write_handler (struct vlapic*) ;
 scalar_t__ x2apic_virtualization (struct vmx*,int) ;

__attribute__((used)) static int
vmx_handle_apic_write(struct vmx *vmx, int vcpuid, struct vlapic *vlapic,
    uint64_t qual)
{
 int error, handled, offset;
 uint32_t *apic_regs, vector;
 bool retu;

 handled = HANDLED;
 offset = APIC_WRITE_OFFSET(qual);

 if (!apic_access_virtualization(vmx, vcpuid)) {







  if (x2apic_virtualization(vmx, vcpuid) &&
      offset == APIC_OFFSET_SELF_IPI) {
   apic_regs = (uint32_t *)(vlapic->apic_page);
   vector = apic_regs[APIC_OFFSET_SELF_IPI / 4];
   vlapic_self_ipi_handler(vlapic, vector);
   return (HANDLED);
  } else
   return (UNHANDLED);
 }

 switch (offset) {
 case 137:
  vlapic_id_write_handler(vlapic);
  break;
 case 136:
  vlapic_ldr_write_handler(vlapic);
  break;
 case 141:
  vlapic_dfr_write_handler(vlapic);
  break;
 case 132:
  vlapic_svr_write_handler(vlapic);
  break;
 case 139:
  vlapic_esr_write_handler(vlapic);
  break;
 case 138:
  retu = 0;
  error = vlapic_icrlo_write_handler(vlapic, &retu);
  if (error != 0 || retu)
   handled = UNHANDLED;
  break;
 case 142:
 case 128:
 case 131:
 case 133:
 case 135:
 case 134:
 case 140:
  vlapic_lvt_write_handler(vlapic, ((uint32_t) offset));
  break;
 case 129:
  vlapic_icrtmr_write_handler(vlapic);
  break;
 case 130:
  vlapic_dcr_write_handler(vlapic);
  break;
 default:
  handled = UNHANDLED;
  break;
 }
 return (handled);
}
