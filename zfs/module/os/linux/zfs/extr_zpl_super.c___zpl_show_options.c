
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_flags; int z_acl_type; } ;
typedef TYPE_1__ zfsvfs_t ;
struct seq_file {int dummy; } ;



 int ZSB_XATTR ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int
__zpl_show_options(struct seq_file *seq, zfsvfs_t *zfsvfs)
{
 seq_printf(seq, ",%s",
     zfsvfs->z_flags & ZSB_XATTR ? "xattr" : "noxattr");
 return (0);
}
