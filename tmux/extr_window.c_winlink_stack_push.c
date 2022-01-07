
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink_stack {int dummy; } ;
struct winlink {int dummy; } ;


 int TAILQ_INSERT_HEAD (struct winlink_stack*,struct winlink*,int ) ;
 int sentry ;
 int winlink_stack_remove (struct winlink_stack*,struct winlink*) ;

void
winlink_stack_push(struct winlink_stack *stack, struct winlink *wl)
{
 if (wl == ((void*)0))
  return;

 winlink_stack_remove(stack, wl);
 TAILQ_INSERT_HEAD(stack, wl, sentry);
}
