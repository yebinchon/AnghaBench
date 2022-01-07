
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {long expires; } ;
struct spl_task_timer {int task; struct timer_list timer; } ;


 int __cv_wakeup ;
 int add_timer (struct timer_list*) ;
 int current ;
 int del_timer_sync (struct timer_list*) ;
 int io_schedule () ;
 long jiffies ;
 int timer_setup (struct timer_list*,int ,int ) ;

__attribute__((used)) static long
spl_io_schedule_timeout(long time_left)
{
 long expire_time = jiffies + time_left;
 struct spl_task_timer task_timer;
 struct timer_list *timer = &task_timer.timer;

 task_timer.task = current;

 timer_setup(timer, __cv_wakeup, 0);

 timer->expires = expire_time;
 add_timer(timer);

 io_schedule();

 del_timer_sync(timer);

 time_left = expire_time - jiffies;

 return (time_left < 0 ? 0 : time_left);
}
