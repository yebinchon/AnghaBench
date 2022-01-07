
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zfs_type; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_6__ {int holdtag; int * snapholds; } ;
typedef TYPE_2__ send_dump_data_t ;


 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int assert (int) ;
 int fnvlist_add_string (int *,int ,int ) ;

__attribute__((used)) static void
gather_holds(zfs_handle_t *zhp, send_dump_data_t *sdd)
{
 assert(zhp->zfs_type == ZFS_TYPE_SNAPSHOT);





 if (sdd->snapholds == ((void*)0))
  return;

 fnvlist_add_string(sdd->snapholds, zhp->zfs_name, sdd->holdtag);
}
