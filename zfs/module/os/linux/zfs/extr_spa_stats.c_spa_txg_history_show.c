
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int state; scalar_t__ writes; scalar_t__ reads; scalar_t__ nwritten; scalar_t__ nread; scalar_t__ ndirty; scalar_t__* times; scalar_t__ txg; } ;
typedef TYPE_1__ spa_txg_history_t ;
typedef int longlong_t ;
 int seq_printf (struct seq_file*,char*,int ,scalar_t__,char,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
spa_txg_history_show(struct seq_file *f, void *data)
{
 spa_txg_history_t *sth = (spa_txg_history_t *)data;
 uint64_t open = 0, quiesce = 0, wait = 0, sync = 0;
 char state;

 switch (sth->state) {
  case 133: state = 'B'; break;
  case 131: state = 'O'; break;
  case 130: state = 'Q'; break;
  case 128: state = 'W'; break;
  case 129: state = 'S'; break;
  case 132: state = 'C'; break;
  default: state = '?'; break;
 }

 if (sth->times[131])
  open = sth->times[131] -
      sth->times[133];

 if (sth->times[130])
  quiesce = sth->times[130] -
      sth->times[131];

 if (sth->times[128])
  wait = sth->times[128] -
      sth->times[130];

 if (sth->times[129])
  sync = sth->times[129] -
      sth->times[128];

 seq_printf(f, "%-8llu %-16llu %-5c %-12llu "
     "%-12llu %-12llu %-8llu %-8llu %-12llu %-12llu %-12llu %-12llu\n",
     (longlong_t)sth->txg, sth->times[133], state,
     (u_longlong_t)sth->ndirty,
     (u_longlong_t)sth->nread, (u_longlong_t)sth->nwritten,
     (u_longlong_t)sth->reads, (u_longlong_t)sth->writes,
     (u_longlong_t)open, (u_longlong_t)quiesce, (u_longlong_t)wait,
     (u_longlong_t)sync);

 return (0);
}
