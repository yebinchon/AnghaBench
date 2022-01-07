
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * snapmap; } ;
struct TYPE_8__ {TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_10__ {int t; } ;
struct TYPE_9__ {size_t mapofs; size_t nent; } ;
typedef TYPE_3__ SnapShot ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef int IRRef ;


 TYPE_6__* IR (int ) ;
 int irref_isk (int ) ;
 int irt_setmark (int ) ;
 int snap_ref (int ) ;

__attribute__((used)) static void sink_mark_snap(jit_State *J, SnapShot *snap)
{
  SnapEntry *map = &J->cur.snapmap[snap->mapofs];
  MSize n, nent = snap->nent;
  for (n = 0; n < nent; n++) {
    IRRef ref = snap_ref(map[n]);
    if (!irref_isk(ref))
      irt_setmark(IR(ref)->t);
  }
}
