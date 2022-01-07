
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t nsnap; int * snapmap; TYPE_3__* snap; } ;
struct TYPE_7__ {TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_9__ {int t; } ;
struct TYPE_8__ {size_t mapofs; size_t nent; } ;
typedef TYPE_3__ SnapShot ;
typedef size_t SnapNo ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ IRRef ;


 TYPE_5__* IR (scalar_t__) ;
 scalar_t__ REF_FIRST ;
 int irt_setmark (int ) ;
 scalar_t__ snap_ref (int ) ;

__attribute__((used)) static void dce_marksnap(jit_State *J)
{
  SnapNo i, nsnap = J->cur.nsnap;
  for (i = 0; i < nsnap; i++) {
    SnapShot *snap = &J->cur.snap[i];
    SnapEntry *map = &J->cur.snapmap[snap->mapofs];
    MSize n, nent = snap->nent;
    for (n = 0; n < nent; n++) {
      IRRef ref = snap_ref(map[n]);
      if (ref >= REF_FIRST)
 irt_setmark(IR(ref)->t);
    }
  }
}
