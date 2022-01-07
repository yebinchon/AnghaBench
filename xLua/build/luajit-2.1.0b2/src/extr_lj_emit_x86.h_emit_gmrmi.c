
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86Op ;
typedef int x86Group ;
typedef int int32_t ;
typedef int Reg ;
typedef int ASMState ;


 int REX_64 ;
 int XG_TOXOi (int) ;
 int XG_TOXOi8 (int) ;
 scalar_t__ checki8 (int ) ;
 int emit_i32 (int *,int ) ;
 int emit_i8 (int *,int ) ;
 int emit_mrm (int *,int ,int,int) ;

__attribute__((used)) static void emit_gmrmi(ASMState *as, x86Group xg, Reg rb, int32_t i)
{
  x86Op xo;
  if (checki8(i)) {
    emit_i8(as, i);
    xo = XG_TOXOi8(xg);
  } else {
    emit_i32(as, i);
    xo = XG_TOXOi(xg);
  }
  emit_mrm(as, xo, (Reg)(xg & 7) | (rb & REX_64), (rb & ~REX_64));
}
