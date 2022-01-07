
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ start_time; scalar_t__ available; scalar_t__ length; scalar_t__ kbps; int on_data_arg; int (* on_data ) (int ,int) ;} ;
typedef TYPE_1__ prog_state ;
typedef scalar_t__ int64_t ;


 int Sleep (int) ;
 scalar_t__ get_current_time () ;
 int lock (TYPE_1__*) ;
 int stub1 (int ,int) ;
 int unlock (TYPE_1__*) ;
 int usleep (int) ;

__attribute__((used)) static void fetcher_thread(prog_state *ps)
{
 int complete = 0;

 ps->start_time = get_current_time();

 while (!complete)
 {




  usleep(200000);


  lock(ps);


  if (ps->available < ps->length)
  {
   int64_t av = (get_current_time() - ps->start_time) * ps->kbps;
   if (av > ps->length)
    av = ps->length;
   ps->available = av;
  }
  else
  {
   complete = 1;
  }

  unlock(ps);


  if (ps->on_data)
   ps->on_data(ps->on_data_arg, complete);
 }
}
