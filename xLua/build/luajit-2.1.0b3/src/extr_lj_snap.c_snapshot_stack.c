
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
struct TYPE_9__ {void* nsnapmap; scalar_t__ nins; int * snapmap; } ;
struct TYPE_10__ {size_t baseslot; size_t maxslot; int framedepth; TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_11__ {scalar_t__ count; void* nslots; scalar_t__ ref; void* mapofs; int topslot; void* nent; } ;
typedef TYPE_3__ SnapShot ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ IRRef1 ;
typedef size_t BCReg ;


 scalar_t__ LJ_FR2 ;
 int lj_snap_grow_map (TYPE_2__*,size_t) ;
 size_t snapshot_framelinks (TYPE_2__*,int *,int *) ;
 size_t snapshot_slots (TYPE_2__*,int *,size_t) ;

__attribute__((used)) static void snapshot_stack(jit_State *J, SnapShot *snap, MSize nsnapmap)
{
  BCReg nslots = J->baseslot + J->maxslot;
  MSize nent;
  SnapEntry *p;

  lj_snap_grow_map(J, nsnapmap + nslots + (MSize)(LJ_FR2?2:J->framedepth+1));
  p = &J->cur.snapmap[nsnapmap];
  nent = snapshot_slots(J, p, nslots);
  snap->nent = (uint8_t)nent;
  nent += snapshot_framelinks(J, p + nent, &snap->topslot);
  snap->mapofs = (uint16_t)nsnapmap;
  snap->ref = (IRRef1)J->cur.nins;
  snap->nslots = (uint8_t)nslots;
  snap->count = 0;
  J->cur.nsnapmap = (uint16_t)(nsnapmap + nent);
}
