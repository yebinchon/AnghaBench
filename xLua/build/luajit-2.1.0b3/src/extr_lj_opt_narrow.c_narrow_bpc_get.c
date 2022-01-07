
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_5__ {TYPE_2__* bpropcache; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {scalar_t__ key; int mode; } ;
typedef scalar_t__ IRRef1 ;
typedef int IRRef ;
typedef TYPE_2__ BPropEntry ;


 size_t BPROP_SLOTS ;
 int IRCONV_MODEMASK ;

__attribute__((used)) static BPropEntry *narrow_bpc_get(jit_State *J, IRRef1 key, IRRef mode)
{
  ptrdiff_t i;
  for (i = 0; i < BPROP_SLOTS; i++) {
    BPropEntry *bp = &J->bpropcache[i];

    if (bp->key == key && bp->mode >= mode &&
 ((bp->mode ^ mode) & IRCONV_MODEMASK) == 0)
      return bp;
  }
  return ((void*)0);
}
