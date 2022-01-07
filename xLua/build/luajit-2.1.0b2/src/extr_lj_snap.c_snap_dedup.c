
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* slot; } ;
typedef TYPE_1__ jit_State ;
typedef int TRef ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef scalar_t__ IRRef ;


 int SNAP_CONT ;
 int SNAP_FRAME ;
 scalar_t__ snap_ref (int ) ;
 size_t snap_slot (int ) ;

__attribute__((used)) static TRef snap_dedup(jit_State *J, SnapEntry *map, MSize nmax, IRRef ref)
{
  MSize j;
  for (j = 0; j < nmax; j++)
    if (snap_ref(map[j]) == ref)
      return J->slot[snap_slot(map[j])] & ~(SNAP_CONT|SNAP_FRAME);
  return 0;
}
