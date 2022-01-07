
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int x86Op ;
typedef int x86Group ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__* mcp; } ;
typedef int Reg ;
typedef scalar_t__ MCode ;
typedef TYPE_1__ ASMState ;


 int REX_64 ;
 int XG_TOXOi (int) ;
 int XG_TOXOi8 (int) ;
 int XM_REG ;
 scalar_t__ checki8 (scalar_t__) ;
 scalar_t__* emit_opm (int ,int ,int,int,scalar_t__*,int ) ;

__attribute__((used)) static void emit_gri(ASMState *as, x86Group xg, Reg rb, int32_t i)
{
  MCode *p = as->mcp;
  x86Op xo;
  if (checki8(i)) {
    *--p = (MCode)i;
    xo = XG_TOXOi8(xg);
  } else {
    p -= 4;
    *(int32_t *)p = i;
    xo = XG_TOXOi(xg);
  }
  as->mcp = emit_opm(xo, XM_REG, (Reg)(xg & 7) | (rb & REX_64), rb, p, 0);
}
