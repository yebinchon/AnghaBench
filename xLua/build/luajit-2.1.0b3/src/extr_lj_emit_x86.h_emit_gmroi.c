
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86Op ;
typedef int x86Group ;
typedef int int32_t ;
typedef int Reg ;
typedef int ASMState ;


 int XG_TOXOi (int) ;
 int XG_TOXOi8 (int) ;
 scalar_t__ checki8 (int ) ;
 int emit_i32 (int *,int ) ;
 int emit_i8 (int *,int ) ;
 int emit_rmro (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void emit_gmroi(ASMState *as, x86Group xg, Reg rb, int32_t ofs,
         int32_t i)
{
  x86Op xo;
  if (checki8(i)) {
    emit_i8(as, i);
    xo = XG_TOXOi8(xg);
  } else {
    emit_i32(as, i);
    xo = XG_TOXOi(xg);
  }
  emit_rmro(as, xo, (Reg)(xg & 7), rb, ofs);
}
