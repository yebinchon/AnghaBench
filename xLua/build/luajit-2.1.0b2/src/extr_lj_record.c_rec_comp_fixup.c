
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nsnap; int * snapmap; TYPE_3__* snap; } ;
struct TYPE_7__ {int needsnap; scalar_t__ maxslot; TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_8__ {size_t mapofs; size_t nent; } ;
typedef TYPE_3__ SnapShot ;
typedef int BCIns ;


 int SNAP_MKPC (int const*) ;
 scalar_t__ bc_a (int ) ;
 int bc_j (int ) ;
 int lj_snap_shrink (TYPE_2__*) ;

__attribute__((used)) static void rec_comp_fixup(jit_State *J, const BCIns *pc, int cond)
{
  BCIns jmpins = pc[1];
  const BCIns *npc = pc + 2 + (cond ? bc_j(jmpins) : 0);
  SnapShot *snap = &J->cur.snap[J->cur.nsnap-1];

  J->cur.snapmap[snap->mapofs + snap->nent] = SNAP_MKPC(npc);
  J->needsnap = 1;
  if (bc_a(jmpins) < J->maxslot) J->maxslot = bc_a(jmpins);
  lj_snap_shrink(J);
}
