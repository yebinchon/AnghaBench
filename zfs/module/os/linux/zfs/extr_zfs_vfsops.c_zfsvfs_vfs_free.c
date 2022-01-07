
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vfs_mntpoint; } ;
typedef TYPE_1__ vfs_t ;


 int kmem_free (TYPE_1__*,int) ;
 int kmem_strfree (int *) ;

__attribute__((used)) static void
zfsvfs_vfs_free(vfs_t *vfsp)
{
 if (vfsp != ((void*)0)) {
  if (vfsp->vfs_mntpoint != ((void*)0))
   kmem_strfree(vfsp->vfs_mntpoint);

  kmem_free(vfsp, sizeof (vfs_t));
 }
}
