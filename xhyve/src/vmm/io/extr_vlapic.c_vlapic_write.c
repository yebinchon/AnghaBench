
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int icr_hi; void* dcr_timer; void* icr_timer; void* icr_lo; void* svr; void* dfr; void* ldr; void* id; } ;
 int KASSERT (int,char*) ;
 int VLAPIC_CTR2 (struct vlapic*,char*,int,int) ;
 int XHYVE_PAGE_SIZE ;
 int vlapic_dcr_write_handler (struct vlapic*) ;
 int vlapic_dfr_write_handler (struct vlapic*) ;
 int vlapic_esr_write_handler (struct vlapic*) ;
 void** vlapic_get_lvtptr (struct vlapic*,void*) ;
 int vlapic_icrlo_write_handler (struct vlapic*,int*) ;
 int vlapic_icrtmr_write_handler (struct vlapic*) ;
 int vlapic_id_write_handler (struct vlapic*) ;
 int vlapic_ldr_write_handler (struct vlapic*) ;
 int vlapic_lvt_write_handler (struct vlapic*,void*) ;
 int vlapic_process_eoi (struct vlapic*) ;
 int vlapic_self_ipi_handler (struct vlapic*,int) ;
 int vlapic_set_tpr (struct vlapic*,int) ;
 int vlapic_svr_write_handler (struct vlapic*) ;
 scalar_t__ x2apic (struct vlapic*) ;

int
vlapic_write(struct vlapic *vlapic, int mmio_access, uint64_t offset,
    uint64_t data, bool *retu)
{
 struct LAPIC *lapic = vlapic->apic_page;
 uint32_t *regptr;
 int retval;

 KASSERT((offset & 0xf) == 0 && offset < XHYVE_PAGE_SIZE,
     ("vlapic_write: invalid offset %#llx", offset));

 VLAPIC_CTR2(vlapic, "vlapic write offset %#llx, data %#llx",
     offset, data);

 if (offset > sizeof(*lapic))
  return (0);


 if (x2apic(vlapic) && mmio_access) {
  VLAPIC_CTR2(vlapic, "MMIO write of %#llx to offset %#llx "
      "in x2APIC mode", data, offset);
  return (0);
 }




 if (!x2apic(vlapic) && !mmio_access) {
  VLAPIC_CTR2(vlapic, "x2APIC MSR write of %#llx to offset %#llx "
      "in xAPIC mode", data, offset);
  return (0);
 }

 retval = 0;
 switch(offset)
 {
  case 167:
   lapic->id = (uint32_t) data;
   vlapic_id_write_handler(vlapic);
   break;
  case 129:
   vlapic_set_tpr(vlapic, data & 0xff);
   break;
  case 172:
   vlapic_process_eoi(vlapic);
   break;
  case 150:
   lapic->ldr = (uint32_t) data;
   vlapic_ldr_write_handler(vlapic);
   break;
  case 173:
   lapic->dfr = (uint32_t) data;
   vlapic_dfr_write_handler(vlapic);
   break;
  case 143:
   lapic->svr = (uint32_t) data;
   vlapic_svr_write_handler(vlapic);
   break;
  case 168:
   lapic->icr_lo = (uint32_t) data;
   if (x2apic(vlapic))
    lapic->icr_hi = data >> 32;
   retval = vlapic_icrlo_write_handler(vlapic, retu);
   break;
  case 169:
   lapic->icr_hi = (uint32_t) data;
   break;
  case 174:
  case 138:
  case 142:
  case 147:
  case 149:
  case 148:
  case 171:
   regptr = vlapic_get_lvtptr(vlapic, ((uint32_t) offset));
   *regptr = (uint32_t) data;
   vlapic_lvt_write_handler(vlapic, ((uint32_t) offset));
   break;
  case 139:
   lapic->icr_timer = (uint32_t) data;
   vlapic_icrtmr_write_handler(vlapic);
   break;

  case 140:
   lapic->dcr_timer = (uint32_t) data;
   vlapic_dcr_write_handler(vlapic);
   break;

  case 170:
   vlapic_esr_write_handler(vlapic);
   break;

  case 144:
   if (x2apic(vlapic))
    vlapic_self_ipi_handler(vlapic, data);
   break;

  case 128:
  case 175:
  case 146:
  case 145:
  case 158:
  case 157:
  case 156:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 166:
  case 165:
  case 164:
  case 163:
  case 162:
  case 161:
  case 160:
  case 159:
  case 141:
  default:

   break;
 }

 return (retval);
}
