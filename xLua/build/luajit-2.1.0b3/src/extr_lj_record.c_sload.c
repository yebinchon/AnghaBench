
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * base; scalar_t__ baseslot; TYPE_1__* L; } ;
typedef TYPE_2__ jit_State ;
typedef size_t int32_t ;
struct TYPE_4__ {int * base; } ;
typedef int TRef ;
typedef int IRType ;


 int IRSLOAD_TYPECHECK ;
 int IRTG (int ,int ) ;
 int IR_SLOAD ;
 int TREF_PRI (int ) ;
 int emitir_raw (int ,size_t,int ) ;
 scalar_t__ irtype_ispri (int ) ;
 int itype2irt (int *) ;

__attribute__((used)) static TRef sload(jit_State *J, int32_t slot)
{
  IRType t = itype2irt(&J->L->base[slot]);
  TRef ref = emitir_raw(IRTG(IR_SLOAD, t), (int32_t)J->baseslot+slot,
   IRSLOAD_TYPECHECK);
  if (irtype_ispri(t)) ref = TREF_PRI(t);
  J->base[slot] = ref;
  return ref;
}
