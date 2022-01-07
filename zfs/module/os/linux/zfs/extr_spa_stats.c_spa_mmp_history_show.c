
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_longlong_t ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {char* vdev_path; scalar_t__ vdev_label; scalar_t__ vdev_guid; scalar_t__ mmp_delay; scalar_t__ duration; scalar_t__ io_error; scalar_t__ timestamp; scalar_t__ txg; scalar_t__ mmp_node_id; scalar_t__ error_start; } ;
typedef TYPE_1__ spa_mmp_history_t ;
typedef int longlong_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static int
spa_mmp_history_show(struct seq_file *f, void *data)
{
 spa_mmp_history_t *smh = (spa_mmp_history_t *)data;
 char skip_fmt[] = "%-10llu %-10llu %10llu %#6llx %10lld %12llu %-24llu "
     "%-10lld %s\n";
 char write_fmt[] = "%-10llu %-10llu %10llu %6lld %10lld %12llu %-24llu "
     "%-10lld %s\n";

 seq_printf(f, (smh->error_start ? skip_fmt : write_fmt),
     (u_longlong_t)smh->mmp_node_id, (u_longlong_t)smh->txg,
     (u_longlong_t)smh->timestamp, (longlong_t)smh->io_error,
     (longlong_t)smh->duration, (u_longlong_t)smh->mmp_delay,
     (u_longlong_t)smh->vdev_guid, (u_longlong_t)smh->vdev_label,
     (smh->vdev_path ? smh->vdev_path : "-"));

 return (0);
}
