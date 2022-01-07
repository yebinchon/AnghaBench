
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static int
spa_import_progress_show_header(struct seq_file *f)
{
 seq_printf(f, "%-20s %-14s %-14s %-12s %s\n", "pool_guid",
     "load_state", "multihost_secs", "max_txg",
     "pool_name");
 return (0);
}
