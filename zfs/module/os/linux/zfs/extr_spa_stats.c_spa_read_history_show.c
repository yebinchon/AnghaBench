
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_longlong_t ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {scalar_t__ pln_id; } ;
struct TYPE_4__ {int comm; int pid; int origin; int aflags; scalar_t__ blkid; scalar_t__ level; scalar_t__ object; scalar_t__ objset; int start; TYPE_1__ srh_node; } ;
typedef TYPE_2__ spa_read_history_t ;
typedef int longlong_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
spa_read_history_show(struct seq_file *f, void *data)
{
 spa_read_history_t *srh = (spa_read_history_t *)data;

 seq_printf(f, "%-8llu %-16llu 0x%-6llx "
     "%-8lli %-8lli %-8lli 0x%-6x %-24s %-8i %-16s\n",
     (u_longlong_t)srh->srh_node.pln_id, srh->start,
     (longlong_t)srh->objset, (longlong_t)srh->object,
     (longlong_t)srh->level, (longlong_t)srh->blkid,
     srh->aflags, srh->origin, srh->pid, srh->comm);

 return (0);
}
