
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swaybar {int eventloop; int display; scalar_t__ running; TYPE_2__* tray; TYPE_1__* status; int ipc_event_socketfd; } ;
struct TYPE_4__ {struct swaybar* bus; int fd; } ;
struct TYPE_3__ {int read_fd; } ;


 scalar_t__ EAGAIN ;
 int POLLIN ;
 int display_in ;
 scalar_t__ errno ;
 int ipc_in ;
 int loop_add_fd (int ,int ,int ,int ,struct swaybar*) ;
 int loop_poll (int ) ;
 int status_in ;
 int tray_in ;
 int wl_display_flush (int ) ;
 int wl_display_get_fd (int ) ;

void bar_run(struct swaybar *bar) {
 loop_add_fd(bar->eventloop, wl_display_get_fd(bar->display), POLLIN,
   display_in, bar);
 loop_add_fd(bar->eventloop, bar->ipc_event_socketfd, POLLIN, ipc_in, bar);
 if (bar->status) {
  loop_add_fd(bar->eventloop, bar->status->read_fd, POLLIN,
    status_in, bar);
 }





 while (bar->running) {
  errno = 0;
  if (wl_display_flush(bar->display) == -1 && errno != EAGAIN) {
   break;
  }
  loop_poll(bar->eventloop);
 }
}
