
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_history {int dummy; } ;


 scalar_t__ pop_view_history_state (struct view_history*,int *,int *) ;

void
reset_view_history(struct view_history *history)
{
 while (pop_view_history_state(history, ((void*)0), ((void*)0)))
  ;
}
