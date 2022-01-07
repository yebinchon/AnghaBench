
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int * pipe; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (struct view*,int *,int) ;} ;


 int io_done (int *) ;
 int io_kill (int *) ;
 int stub1 (struct view*,int *,int) ;

void
end_update(struct view *view, bool force)
{
 if (!view->pipe)
  return;
 while (!view->ops->read(view, ((void*)0), force))
  if (!force)
   return;
 if (force)
  io_kill(view->pipe);
 io_done(view->pipe);
 view->pipe = ((void*)0);
}
