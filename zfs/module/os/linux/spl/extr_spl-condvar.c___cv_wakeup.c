
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct spl_task_timer {int task; } ;
typedef scalar_t__ spl_timer_list_t ;


 struct spl_task_timer* from_timer (int ,struct timer_list*,int ) ;
 struct spl_task_timer* task_timer ;
 int timer ;
 int wake_up_process (int ) ;

__attribute__((used)) static void
__cv_wakeup(spl_timer_list_t t)
{
 struct timer_list *tmr = (struct timer_list *)t;
 struct spl_task_timer *task_timer = from_timer(task_timer, tmr, timer);

 wake_up_process(task_timer->task);
}
