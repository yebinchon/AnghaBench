
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int Reg ;
typedef int ASMState ;


 int XO_MOVmi ;
 int emit_i32 (int *,int ) ;
 int emit_rmro (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void emit_movmroi(ASMState *as, Reg base, int32_t ofs, int32_t i)
{
  emit_i32(as, i);
  emit_rmro(as, XO_MOVmi, 0, base, ofs);
}
