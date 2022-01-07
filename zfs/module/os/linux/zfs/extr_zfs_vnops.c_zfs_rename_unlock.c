
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* zl_next; int zl_rwlock; int * zl_znode; } ;
typedef TYPE_1__ zfs_zlock_t ;


 int ZTOI (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int rw_exit (int ) ;
 int zfs_iput_async (int ) ;

__attribute__((used)) static void
zfs_rename_unlock(zfs_zlock_t **zlpp)
{
 zfs_zlock_t *zl;

 while ((zl = *zlpp) != ((void*)0)) {
  if (zl->zl_znode != ((void*)0))
   zfs_iput_async(ZTOI(zl->zl_znode));
  rw_exit(zl->zl_rwlock);
  *zlpp = zl->zl_next;
  kmem_free(zl, sizeof (*zl));
 }
}
