
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
struct TYPE_6__ {int nsnap; size_t nsnapmap; int * snapmap; TYPE_3__* snap; } ;
struct TYPE_7__ {scalar_t__ maxslot; scalar_t__ baseslot; TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_8__ {size_t mapofs; size_t nent; scalar_t__ nslots; } ;
typedef TYPE_3__ SnapShot ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ BCReg ;


 int SNAP_USEDEF_SLOTS ;
 int snap_pc (int *) ;
 scalar_t__ snap_slot (int ) ;
 scalar_t__ snap_usedef (TYPE_2__*,scalar_t__*,int ,scalar_t__) ;

void lj_snap_shrink(jit_State *J)
{
  SnapShot *snap = &J->cur.snap[J->cur.nsnap-1];
  SnapEntry *map = &J->cur.snapmap[snap->mapofs];
  MSize n, m, nlim, nent = snap->nent;
  uint8_t udf[SNAP_USEDEF_SLOTS];
  BCReg maxslot = J->maxslot;
  BCReg baseslot = J->baseslot;
  BCReg minslot = snap_usedef(J, udf, snap_pc(&map[nent]), maxslot);
  maxslot += baseslot;
  minslot += baseslot;
  snap->nslots = (uint8_t)maxslot;
  for (n = m = 0; n < nent; n++) {
    BCReg s = snap_slot(map[n]);
    if (s < minslot || (s < maxslot && udf[s-baseslot] == 0))
      map[m++] = map[n];
  }
  snap->nent = (uint8_t)m;
  nlim = J->cur.nsnapmap - snap->mapofs - 1;
  while (n <= nlim) map[m++] = map[n++];
  J->cur.nsnapmap = (uint16_t)(snap->mapofs + m);
}
