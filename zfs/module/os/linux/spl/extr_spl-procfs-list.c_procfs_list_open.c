
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {scalar_t__ cached_pos; int * cached_node; int procfs_list; } ;
typedef TYPE_1__ procfs_list_cursor_t ;


 int PDE_DATA (struct inode*) ;
 int procfs_list_seq_ops ;
 int seq_open_private (struct file*,int *,int) ;

__attribute__((used)) static int
procfs_list_open(struct inode *inode, struct file *filp)
{
 int rc = seq_open_private(filp, &procfs_list_seq_ops,
     sizeof (procfs_list_cursor_t));
 if (rc != 0)
  return (rc);

 struct seq_file *f = filp->private_data;
 procfs_list_cursor_t *cursor = f->private;
 cursor->procfs_list = PDE_DATA(inode);
 cursor->cached_node = ((void*)0);
 cursor->cached_pos = 0;

 return (0);
}
