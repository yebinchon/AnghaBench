
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct inode*) ;

void iput(struct inode *inode)
{
    if (atomic_dec_and_test(&inode->i_count)) {
        kfree(inode);
    }
}
