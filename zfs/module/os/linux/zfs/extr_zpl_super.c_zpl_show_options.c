
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_fs_info; } ;


 int __zpl_show_options (struct seq_file*,int ) ;

__attribute__((used)) static int
zpl_show_options(struct seq_file *seq, struct dentry *root)
{
 return (__zpl_show_options(seq, root->d_sb->s_fs_info));
}
