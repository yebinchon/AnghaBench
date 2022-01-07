
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zdm_size; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;
struct TYPE_6__ {int pl_list; } ;


 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* list_remove_head (int *) ;
 int zfs_dbgmsg_size ;
 TYPE_2__ zfs_dbgmsgs ;

__attribute__((used)) static void
zfs_dbgmsg_purge(int max_size)
{
 while (zfs_dbgmsg_size > max_size) {
  zfs_dbgmsg_t *zdm = list_remove_head(&zfs_dbgmsgs.pl_list);
  if (zdm == ((void*)0))
   return;

  int size = zdm->zdm_size;
  kmem_free(zdm, size);
  zfs_dbgmsg_size -= size;
 }
}
