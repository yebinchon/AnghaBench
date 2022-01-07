
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {size_t maxslot; scalar_t__* base; int pc; } ;
typedef TYPE_1__ jit_State ;
typedef size_t BCReg ;


 int SNAP_USEDEF_SLOTS ;
 size_t snap_usedef (TYPE_1__*,scalar_t__*,int ,size_t) ;

void lj_snap_purge(jit_State *J)
{
  uint8_t udf[SNAP_USEDEF_SLOTS];
  BCReg maxslot = J->maxslot;
  BCReg s = snap_usedef(J, udf, J->pc, maxslot);
  for (; s < maxslot; s++)
    if (udf[s] != 0)
      J->base[s] = 0;
}
