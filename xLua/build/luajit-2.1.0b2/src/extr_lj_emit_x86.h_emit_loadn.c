
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; } ;
typedef TYPE_1__ cTValue ;
typedef int Reg ;
typedef int ASMState ;


 int XO_MOVSD ;
 int XO_XORPS ;
 int emit_rma (int *,int ,int ,int *) ;
 int emit_rr (int *,int ,int ,int ) ;
 scalar_t__ tvispzero (TYPE_1__*) ;

__attribute__((used)) static void emit_loadn(ASMState *as, Reg r, cTValue *tv)
{
  if (tvispzero(tv))
    emit_rr(as, XO_XORPS, r, r);
  else
    emit_rma(as, XO_MOVSD, r, &tv->n);
}
