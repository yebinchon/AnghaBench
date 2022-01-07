
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
taskq_seq_show_headers(struct seq_file *f)
{
 seq_printf(f, "%-25s %5s %5s %5s %5s %5s %5s %12s %5s %10s\n",
     "taskq", "act", "nthr", "spwn", "maxt", "pri",
     "mina", "maxa", "cura", "flags");
}
