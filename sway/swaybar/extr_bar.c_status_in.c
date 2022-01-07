
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int status; int eventloop; } ;


 short POLLERR ;
 short POLLHUP ;
 int loop_remove_fd (int ,int) ;
 int set_bar_dirty (struct swaybar*) ;
 int status_error (int ,char*) ;
 scalar_t__ status_handle_readable (int ) ;

void status_in(int fd, short mask, void *data) {
 struct swaybar *bar = data;
 if (mask & (POLLHUP | POLLERR)) {
  status_error(bar->status, "[error reading from status command]");
  set_bar_dirty(bar);
  loop_remove_fd(bar->eventloop, fd);
 } else if (status_handle_readable(bar->status)) {
  set_bar_dirty(bar);
 }
}
