
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static int
spa_txg_history_show_header(struct seq_file *f)
{
 seq_printf(f, "%-8s %-16s %-5s %-12s %-12s %-12s "
     "%-8s %-8s %-12s %-12s %-12s %-12s\n", "txg", "birth", "state",
     "ndirty", "nread", "nwritten", "reads", "writes",
     "otime", "qtime", "wtime", "stime");
 return (0);
}
