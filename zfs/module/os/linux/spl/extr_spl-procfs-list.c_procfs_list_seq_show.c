
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {TYPE_2__* private; } ;
struct TYPE_3__ {int (* pl_show_header ) (struct seq_file*) ;int (* pl_show ) (struct seq_file*,void*) ;int pl_lock; } ;
typedef TYPE_1__ procfs_list_t ;
struct TYPE_4__ {TYPE_1__* procfs_list; } ;
typedef TYPE_2__ procfs_list_cursor_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 void* SEQ_START_TOKEN ;
 int stub1 (struct seq_file*) ;
 int stub2 (struct seq_file*,void*) ;

__attribute__((used)) static int
procfs_list_seq_show(struct seq_file *f, void *p)
{
 procfs_list_cursor_t *cursor = f->private;
 procfs_list_t *procfs_list = cursor->procfs_list;

 ASSERT(MUTEX_HELD(&procfs_list->pl_lock));
 if (p == SEQ_START_TOKEN) {
  if (procfs_list->pl_show_header != ((void*)0))
   return (procfs_list->pl_show_header(f));
  else
   return (0);
 }
 return (procfs_list->pl_show(f, p));
}
