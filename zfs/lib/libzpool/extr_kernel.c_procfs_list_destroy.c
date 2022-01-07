
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pl_lock; int pl_list; } ;
typedef TYPE_1__ procfs_list_t ;


 int ASSERT (int ) ;
 int list_destroy (int *) ;
 int list_is_empty (int *) ;
 int mutex_destroy (int *) ;

void
procfs_list_destroy(procfs_list_t *procfs_list)
{
 ASSERT(list_is_empty(&procfs_list->pl_list));
 list_destroy(&procfs_list->pl_list);
 mutex_destroy(&procfs_list->pl_lock);
}
