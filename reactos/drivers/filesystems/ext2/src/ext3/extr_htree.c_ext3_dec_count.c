
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; } ;



void ext3_dec_count(struct inode *inode)
{
    inode->i_nlink--;
}
