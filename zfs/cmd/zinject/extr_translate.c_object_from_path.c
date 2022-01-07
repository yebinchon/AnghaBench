
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zi_object; int zi_objset; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int zfs_handle_t ;
typedef int uint64_t ;


 int ZFS_PROP_OBJSETID ;
 int ZFS_TYPE_DATASET ;
 int g_zfs ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char const*,int ) ;
 int zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
object_from_path(const char *dataset, uint64_t object, zinject_record_t *record)
{
 zfs_handle_t *zhp;

 if ((zhp = zfs_open(g_zfs, dataset, ZFS_TYPE_DATASET)) == ((void*)0))
  return (-1);

 record->zi_objset = zfs_prop_get_int(zhp, ZFS_PROP_OBJSETID);
 record->zi_object = object;

 zfs_close(zhp);

 return (0);
}
