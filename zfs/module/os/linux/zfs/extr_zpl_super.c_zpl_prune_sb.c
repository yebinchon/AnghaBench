
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int int64_t ;


 int zfs_prune (struct super_block*,int ,int*) ;

void
zpl_prune_sb(int64_t nr_to_scan, void *arg)
{
 struct super_block *sb = (struct super_block *)arg;
 int objects = 0;

 (void) -zfs_prune(sb, nr_to_scan, &objects);
}
