
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskq_ent_t ;
struct timer_list {int dummy; } ;
typedef scalar_t__ spl_timer_list_t ;


 int * from_timer (int ,struct timer_list*,int ) ;
 int * t ;
 int task_expire_impl (int *) ;
 int tqent_timer ;

__attribute__((used)) static void
task_expire(spl_timer_list_t tl)
{
 struct timer_list *tmr = (struct timer_list *)tl;
 taskq_ent_t *t = from_timer(t, tmr, tqent_timer);
 task_expire_impl(t);
}
