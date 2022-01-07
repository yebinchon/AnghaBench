
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zo_actions; int zo_lock; } ;
typedef TYPE_1__ zfs_onexit_t ;
typedef int zfs_onexit_action_node_t ;
typedef scalar_t__ uint64_t ;
typedef int list_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int * list_head (int *) ;
 int * list_next (int *,int *) ;

__attribute__((used)) static zfs_onexit_action_node_t *
zfs_onexit_find_cb(zfs_onexit_t *zo, uint64_t action_handle)
{
 zfs_onexit_action_node_t *match;
 zfs_onexit_action_node_t *ap;
 list_t *l;

 ASSERT(MUTEX_HELD(&zo->zo_lock));

 match = (zfs_onexit_action_node_t *)(uintptr_t)action_handle;
 l = &zo->zo_actions;
 for (ap = list_head(l); ap != ((void*)0); ap = list_next(l, ap)) {
  if (match == ap)
   break;
 }
 return (ap);
}
