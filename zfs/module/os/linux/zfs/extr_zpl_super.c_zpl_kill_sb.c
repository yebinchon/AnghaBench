
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_anon_super (struct super_block*) ;
 int zfs_preumount (struct super_block*) ;

__attribute__((used)) static void
zpl_kill_sb(struct super_block *sb)
{
 zfs_preumount(sb);
 kill_anon_super(sb);
}
