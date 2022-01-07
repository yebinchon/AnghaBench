
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zdm_msg; scalar_t__ zdm_timestamp; } ;
typedef TYPE_1__ zfs_dbgmsg_t ;
typedef int u_longlong_t ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int
zfs_dbgmsg_show(struct seq_file *f, void *p)
{
 zfs_dbgmsg_t *zdm = (zfs_dbgmsg_t *)p;
 seq_printf(f, "%-12llu %-s\n",
     (u_longlong_t)zdm->zdm_timestamp, zdm->zdm_msg);
 return (0);
}
