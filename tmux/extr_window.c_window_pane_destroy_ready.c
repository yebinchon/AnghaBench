
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {int pipe_fd; int flags; int fd; TYPE_1__* pipe_event; } ;
struct TYPE_2__ {int output; } ;


 scalar_t__ EVBUFFER_LENGTH (int ) ;
 int FIONREAD ;
 int PANE_EXITED ;
 int ioctl (int ,int ,int*) ;

int
window_pane_destroy_ready(struct window_pane *wp)
{
 int n;

 if (wp->pipe_fd != -1) {
  if (EVBUFFER_LENGTH(wp->pipe_event->output) != 0)
   return (0);
  if (ioctl(wp->fd, FIONREAD, &n) != -1 && n > 0)
   return (0);
 }

 if (~wp->flags & PANE_EXITED)
  return (0);
 return (1);
}
