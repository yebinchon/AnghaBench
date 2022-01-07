
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t bpropslot; TYPE_2__* bpropcache; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_5__ {int mode; void* val; void* key; } ;
typedef void* IRRef1 ;
typedef int IRRef ;
typedef TYPE_2__ BPropEntry ;


 int BPROP_SLOTS ;

__attribute__((used)) static void narrow_bpc_set(jit_State *J, IRRef1 key, IRRef1 val, IRRef mode)
{
  uint32_t slot = J->bpropslot;
  BPropEntry *bp = &J->bpropcache[slot];
  J->bpropslot = (slot + 1) & (BPROP_SLOTS-1);
  bp->key = key;
  bp->val = val;
  bp->mode = mode;
}
