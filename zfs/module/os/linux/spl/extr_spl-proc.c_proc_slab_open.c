
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open (struct file*,int *) ;
 int slab_seq_ops ;

__attribute__((used)) static int
proc_slab_open(struct inode *inode, struct file *filp)
{
 return (seq_open(filp, &slab_seq_ops));
}
