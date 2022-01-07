
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int se_path; int se_name; int se_refcount; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int kmem_free (TYPE_1__*,int) ;
 int kmem_strfree (int ) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
zfsctl_snapshot_free(zfs_snapentry_t *se)
{
 zfs_refcount_destroy(&se->se_refcount);
 kmem_strfree(se->se_name);
 kmem_strfree(se->se_path);

 kmem_free(se, sizeof (zfs_snapentry_t));
}
