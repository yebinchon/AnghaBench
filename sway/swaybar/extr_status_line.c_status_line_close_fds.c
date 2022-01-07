
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct status_line {int read_fd; int write_fd; TYPE_1__* bar; } ;
struct TYPE_2__ {int eventloop; } ;


 int close (int) ;
 int loop_remove_fd (int ,int) ;

__attribute__((used)) static void status_line_close_fds(struct status_line *status) {
 if (status->read_fd != -1) {
  loop_remove_fd(status->bar->eventloop, status->read_fd);
  close(status->read_fd);
  status->read_fd = -1;
 }
 if (status->write_fd != -1) {
  close(status->write_fd);
  status->write_fd = -1;
 }
}
