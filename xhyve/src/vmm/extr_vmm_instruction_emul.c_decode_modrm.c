
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int op_flags; } ;
struct vie {int mod; int rm; int reg; int rex_b; int rex_r; int base_register; int disp_bytes; TYPE_1__ op; } ;
typedef enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;


 int CPU_MODE_64BIT ;
 int CPU_MODE_REAL ;
 int VIE_MOD_DIRECT ;



 int VIE_OP_F_NO_MODRM ;
 int VIE_RM_DISP32 ;
 int VIE_RM_SIB ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_LAST ;
 scalar_t__* gpr_map ;
 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,int*) ;

__attribute__((used)) static int
decode_modrm(struct vie *vie, enum vm_cpu_mode cpu_mode)
{
 uint8_t x;

 if (vie->op.op_flags & VIE_OP_F_NO_MODRM)
  return (0);

 if (cpu_mode == CPU_MODE_REAL)
  return (-1);

 if (vie_peek(vie, &x))
  return (-1);

 vie->mod = (x >> 6) & 0x3;
 vie->rm = (x >> 0) & 0x7;
 vie->reg = (x >> 3) & 0x7;






 if (vie->mod == VIE_MOD_DIRECT)
  return (-1);

 if ((vie->mod == 130 && vie->rm == VIE_RM_DISP32) ||
     (vie->mod != VIE_MOD_DIRECT && vie->rm == VIE_RM_SIB)) {
 } else {
  vie->rm |= (vie->rex_b << 3);
 }

 vie->reg |= (vie->rex_r << 3);


 if (vie->mod != VIE_MOD_DIRECT && vie->rm == VIE_RM_SIB)
  goto done;

 vie->base_register = (int) gpr_map[vie->rm];

 switch (vie->mod) {
 case 128:
  vie->disp_bytes = 1;
  break;
 case 129:
  vie->disp_bytes = 4;
  break;
 case 130:
  if (vie->rm == VIE_RM_DISP32) {
   vie->disp_bytes = 4;







   if (cpu_mode == CPU_MODE_64BIT)
    vie->base_register = VM_REG_GUEST_RIP;
   else
    vie->base_register = VM_REG_LAST;
  }
  break;
 }

done:
 vie_advance(vie);

 return (0);
}
