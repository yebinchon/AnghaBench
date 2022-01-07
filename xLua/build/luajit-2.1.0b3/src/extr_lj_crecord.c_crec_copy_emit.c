
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_3__ {scalar_t__ tp; void* trval; void* trofs; int ofs; } ;
typedef void* TRef ;
typedef size_t MSize ;
typedef TYPE_1__ CRecMemList ;


 size_t CREC_COPY_REGWIN ;
 int IRT (int ,scalar_t__) ;
 scalar_t__ IRT_NUM ;
 scalar_t__ IRT_PTR ;
 int IR_ADD ;
 int IR_XLOAD ;
 int IR_XSTORE ;
 scalar_t__ LJ_SOFTFP ;
 void* emitir (int ,void*,void*) ;
 void* lj_ir_kintp (int *,int ) ;

__attribute__((used)) static void crec_copy_emit(jit_State *J, CRecMemList *ml, MSize mlp,
      TRef trdst, TRef trsrc)
{
  MSize i, j, rwin = 0;
  for (i = 0, j = 0; i < mlp; ) {
    TRef trofs = lj_ir_kintp(J, ml[i].ofs);
    TRef trsptr = emitir(IRT(IR_ADD, IRT_PTR), trsrc, trofs);
    ml[i].trval = emitir(IRT(IR_XLOAD, ml[i].tp), trsptr, 0);
    ml[i].trofs = trofs;
    i++;
    rwin += (LJ_SOFTFP && ml[i].tp == IRT_NUM) ? 2 : 1;
    if (rwin >= CREC_COPY_REGWIN || i >= mlp) {
      rwin = 0;
      for ( ; j < i; j++) {
 TRef trdptr = emitir(IRT(IR_ADD, IRT_PTR), trdst, ml[j].trofs);
 emitir(IRT(IR_XSTORE, ml[j].tp), trdptr, ml[j].trval);
      }
    }
  }
}
