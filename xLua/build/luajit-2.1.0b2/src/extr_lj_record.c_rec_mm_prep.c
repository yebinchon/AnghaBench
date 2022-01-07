
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t maxslot; int* base; int framedepth; int L; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {size_t framesize; } ;
typedef int TRef ;
typedef size_t BCReg ;
typedef scalar_t__ ASMFunction ;


 int TREF_CONT ;
 TYPE_4__* curr_proto (int ) ;
 scalar_t__ lj_cont_cat ;
 int lj_ir_kptr (TYPE_1__*,void*) ;
 scalar_t__ lj_vm_asm_begin ;

__attribute__((used)) static BCReg rec_mm_prep(jit_State *J, ASMFunction cont)
{
  BCReg s, top = cont == lj_cont_cat ? J->maxslot : curr_proto(J->L)->framesize;



  TRef trcont = lj_ir_kptr(J, (void *)cont);

  J->base[top] = trcont | TREF_CONT;
  J->framedepth++;
  for (s = J->maxslot; s < top; s++)
    J->base[s] = 0;
  return top+1;
}
