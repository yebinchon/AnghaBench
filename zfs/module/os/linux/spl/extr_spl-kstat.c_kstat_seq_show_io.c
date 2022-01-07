
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int rcnt; int wcnt; int rlastupdate; int rlentime; int rtime; int wlastupdate; int wlentime; int wtime; int writes; int reads; int nwritten; int nread; } ;
typedef TYPE_1__ kstat_io_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
kstat_seq_show_io(struct seq_file *f, kstat_io_t *kip)
{

 seq_printf(f,
     "%-8llu %-8llu %-8u %-8u %-8llu %-8llu "
     "%-8llu %-8llu %-8llu %-8llu %-8u %-8u\n",
     kip->nread, kip->nwritten,
     kip->reads, kip->writes,
     kip->wtime, kip->wlentime, kip->wlastupdate,
     kip->rtime, kip->rlentime, kip->rlastupdate,
     kip->wcnt, kip->rcnt);

 return (0);
}
