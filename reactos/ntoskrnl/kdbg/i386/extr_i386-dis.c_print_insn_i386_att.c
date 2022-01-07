
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassemble_info ;
typedef int bfd_vma ;


 scalar_t__ intel_syntax ;
 int print_insn (int ,int *) ;

int
print_insn_i386_att (bfd_vma pc, disassemble_info *info)
{
  intel_syntax = 0;

  return print_insn (pc, info);
}
