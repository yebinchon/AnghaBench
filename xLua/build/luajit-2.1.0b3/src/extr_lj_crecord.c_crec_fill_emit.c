
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_3__ {int tp; int ofs; } ;
typedef int TRef ;
typedef size_t MSize ;
typedef TYPE_1__ CRecMemList ;


 int IRT (int ,int ) ;
 int IRT_PTR ;
 int IR_ADD ;
 int IR_XSTORE ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kintp (int *,int ) ;

__attribute__((used)) static void crec_fill_emit(jit_State *J, CRecMemList *ml, MSize mlp,
      TRef trdst, TRef trfill)
{
  MSize i;
  for (i = 0; i < mlp; i++) {
    TRef trofs = lj_ir_kintp(J, ml[i].ofs);
    TRef trdptr = emitir(IRT(IR_ADD, IRT_PTR), trdst, trofs);
    emitir(IRT(IR_XSTORE, ml[i].tp), trdptr, trfill);
  }
}
