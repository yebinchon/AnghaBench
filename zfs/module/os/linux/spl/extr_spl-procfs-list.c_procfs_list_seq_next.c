
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {TYPE_2__* private; } ;
struct TYPE_5__ {TYPE_1__* procfs_list; } ;
typedef TYPE_2__ procfs_list_cursor_t ;
typedef int loff_t ;
struct TYPE_4__ {int pl_lock; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 void* procfs_list_next_node (TYPE_2__*,int *) ;

__attribute__((used)) static void *
procfs_list_seq_next(struct seq_file *f, void *p, loff_t *pos)
{
 procfs_list_cursor_t *cursor = f->private;
 ASSERT(MUTEX_HELD(&cursor->procfs_list->pl_lock));
 return (procfs_list_next_node(cursor, pos));
}
