
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {scalar_t__ reserved; TYPE_1__ root_item; } ;
typedef TYPE_2__ root ;
struct TYPE_8__ {scalar_t__ RequestorMode; } ;
typedef TYPE_3__* PIRP ;


 int BTRFS_SUBVOL_READONLY ;
 scalar_t__ PsGetCurrentProcess () ;
 scalar_t__ UserMode ;

__attribute__((used)) __inline static bool is_subvol_readonly(root* r, PIRP Irp) {
    if (!(r->root_item.flags & BTRFS_SUBVOL_READONLY))
        return 0;

    if (!r->reserved)
        return 1;

    return (!Irp || Irp->RequestorMode == UserMode) && PsGetCurrentProcess() != r->reserved ? 1 : 0;
}
