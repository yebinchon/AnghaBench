
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int se_name; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int ASSERT (int ) ;
 int ENOENT ;
 int RW_WRITE_HELD (int *) ;
 int SET_ERROR (int ) ;
 int kmem_strdup (char*) ;
 int kmem_strfree (int ) ;
 int zfs_snapshot_lock ;
 int zfsctl_snapshot_add (TYPE_1__*) ;
 TYPE_1__* zfsctl_snapshot_find_by_name (char*) ;
 int zfsctl_snapshot_rele (TYPE_1__*) ;
 int zfsctl_snapshot_remove (TYPE_1__*) ;

__attribute__((used)) static int
zfsctl_snapshot_rename(char *old_snapname, char *new_snapname)
{
 zfs_snapentry_t *se;

 ASSERT(RW_WRITE_HELD(&zfs_snapshot_lock));

 se = zfsctl_snapshot_find_by_name(old_snapname);
 if (se == ((void*)0))
  return (SET_ERROR(ENOENT));

 zfsctl_snapshot_remove(se);
 kmem_strfree(se->se_name);
 se->se_name = kmem_strdup(new_snapname);
 zfsctl_snapshot_add(se);
 zfsctl_snapshot_rele(se);

 return (0);
}
