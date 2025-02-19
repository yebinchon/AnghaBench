
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int t; } ;
struct TYPE_9__ {size_t snapno; TYPE_1__* T; } ;
struct TYPE_8__ {size_t mapofs; size_t nent; } ;
struct TYPE_7__ {int* snapmap; TYPE_2__* snap; } ;
typedef TYPE_2__ SnapShot ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ IRRef ;
typedef TYPE_3__ ASMState ;


 TYPE_6__* IR (scalar_t__) ;
 scalar_t__ IRT_SOFTFP ;
 scalar_t__ LJ_SOFTFP ;
 int SNAP_SOFTFPNUM ;
 int asm_snap_alloc1 (TYPE_3__*,scalar_t__) ;
 int irref_isk (scalar_t__) ;
 scalar_t__ irt_type (int ) ;
 int lua_assert (int) ;
 scalar_t__ snap_ref (int) ;

__attribute__((used)) static void asm_snap_alloc(ASMState *as)
{
  SnapShot *snap = &as->T->snap[as->snapno];
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
  MSize n, nent = snap->nent;
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    IRRef ref = snap_ref(sn);
    if (!irref_isk(ref)) {
      asm_snap_alloc1(as, ref);
      if (LJ_SOFTFP && (sn & SNAP_SOFTFPNUM)) {
 lua_assert(irt_type(IR(ref+1)->t) == IRT_SOFTFP);
 asm_snap_alloc1(as, ref+1);
      }
    }
  }
}
