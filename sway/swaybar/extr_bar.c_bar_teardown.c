
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int mode; int id; scalar_t__ status; int ipc_socketfd; int ipc_event_socketfd; scalar_t__ config; int seats; int unused_outputs; int outputs; int tray; } ;


 int close (int ) ;
 int destroy_tray (int ) ;
 int free (int ) ;
 int free_config (scalar_t__) ;
 int free_outputs (int *) ;
 int free_seats (int *) ;
 int status_line_free (scalar_t__) ;

void bar_teardown(struct swaybar *bar) {



 free_outputs(&bar->outputs);
 free_outputs(&bar->unused_outputs);
 free_seats(&bar->seats);
 if (bar->config) {
  free_config(bar->config);
 }
 close(bar->ipc_event_socketfd);
 close(bar->ipc_socketfd);
 if (bar->status) {
  status_line_free(bar->status);
 }
 free(bar->id);
 free(bar->mode);
}
