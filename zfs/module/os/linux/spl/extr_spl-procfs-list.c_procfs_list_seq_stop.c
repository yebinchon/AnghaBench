
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {TYPE_2__* private; } ;
struct TYPE_3__ {int pl_lock; } ;
typedef TYPE_1__ procfs_list_t ;
struct TYPE_4__ {TYPE_1__* procfs_list; } ;
typedef TYPE_2__ procfs_list_cursor_t ;


 int mutex_exit (int *) ;

__attribute__((used)) static void
procfs_list_seq_stop(struct seq_file *f, void *p)
{
 procfs_list_cursor_t *cursor = f->private;
 procfs_list_t *procfs_list = cursor->procfs_list;
 mutex_exit(&procfs_list->pl_lock);
}
