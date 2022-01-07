
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * base; scalar_t__ baseslot; } ;
typedef TYPE_1__ jit_State ;
typedef size_t int32_t ;
typedef int TRef ;
typedef int IRType ;


 int IRT (int ,int ) ;
 int IR_SLOAD ;
 int emitir_raw (int ,size_t,int) ;

__attribute__((used)) static TRef sloadt(jit_State *J, int32_t slot, IRType t, int mode)
{

  TRef ref = emitir_raw(IRT(IR_SLOAD, t), (int32_t)J->baseslot+slot, mode);
  J->base[slot] = ref;
  return ref;
}
