
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char*,char*) ;

__attribute__((used)) static int
zfs_dbgmsg_show_header(struct seq_file *f)
{
 seq_printf(f, "%-12s %-8s\n", "timestamp", "message");
 return (0);
}
