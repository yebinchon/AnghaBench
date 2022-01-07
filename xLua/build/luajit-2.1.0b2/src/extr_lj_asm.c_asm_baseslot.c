
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* T; } ;
struct TYPE_7__ {size_t mapofs; int nent; } ;
struct TYPE_6__ {int* snapmap; } ;
typedef TYPE_2__ SnapShot ;
typedef int SnapEntry ;
typedef int MSize ;
typedef int BCReg ;
typedef TYPE_3__ ASMState ;


 int SNAP_FRAME ;
 int snap_slot (int) ;

__attribute__((used)) static BCReg asm_baseslot(ASMState *as, SnapShot *snap, int *gotframe)
{
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
  MSize n;
  for (n = snap->nent; n > 0; n--) {
    SnapEntry sn = map[n-1];
    if ((sn & SNAP_FRAME)) {
      *gotframe = 1;
      return snap_slot(sn);
    }
  }
  return 0;
}
