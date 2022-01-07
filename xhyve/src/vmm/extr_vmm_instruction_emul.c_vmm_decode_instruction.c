
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vm {int dummy; } ;
struct TYPE_2__ {int op_flags; } ;
struct vie {int decoded; TYPE_1__ op; } ;
typedef enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;


 int VIE_OP_F_NO_GLA_VERIFICATION ;
 scalar_t__ decode_displacement (struct vie*) ;
 scalar_t__ decode_immediate (struct vie*) ;
 scalar_t__ decode_modrm (struct vie*,int) ;
 scalar_t__ decode_moffset (struct vie*) ;
 scalar_t__ decode_opcode (struct vie*) ;
 scalar_t__ decode_prefixes (struct vie*,int,int) ;
 scalar_t__ decode_sib (struct vie*) ;
 scalar_t__ verify_gla (struct vm*,int,int ,struct vie*) ;
 scalar_t__ verify_inst_length (struct vie*) ;

int
vmm_decode_instruction(struct vm *vm, int cpuid, uint64_t gla,
         enum vm_cpu_mode cpu_mode, int cs_d, struct vie *vie)
{

 if (decode_prefixes(vie, cpu_mode, cs_d))
  return (-1);

 if (decode_opcode(vie))
  return (-1);

 if (decode_modrm(vie, cpu_mode))
  return (-1);

 if (decode_sib(vie))
  return (-1);

 if (decode_displacement(vie))
  return (-1);

 if (decode_immediate(vie))
  return (-1);

 if (decode_moffset(vie))
  return (-1);

 if (verify_inst_length(vie))
  return (-1);

 if ((vie->op.op_flags & VIE_OP_F_NO_GLA_VERIFICATION) == 0) {
  if (verify_gla(vm, cpuid, gla, vie))
   return (-1);
 }

 vie->decoded = 1;

 return (0);
}
