
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int stop_time; int start_time; int max_time; int min_time; int elapsed_time; int num_events; int name; } ;
typedef TYPE_1__ kstat_timer_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
kstat_seq_show_timer(struct seq_file *f, kstat_timer_t *ktp)
{
 seq_printf(f,
     "%-31s %-8llu %-8llu %-8llu %-8llu %-8llu %-8llu\n",
     ktp->name, ktp->num_events, ktp->elapsed_time,
     ktp->min_time, ktp->max_time,
     ktp->start_time, ktp->stop_time);

 return (0);
}
