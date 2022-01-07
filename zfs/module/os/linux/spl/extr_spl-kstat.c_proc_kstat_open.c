
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int PDE_DATA (struct inode*) ;
 int kstat_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int
proc_kstat_open(struct inode *inode, struct file *filp)
{
 struct seq_file *f;
 int rc;

 rc = seq_open(filp, &kstat_seq_ops);
 if (rc)
  return (rc);

 f = filp->private_data;
 f->private = PDE_DATA(inode);

 return (rc);
}
