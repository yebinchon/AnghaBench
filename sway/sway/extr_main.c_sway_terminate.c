
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wl_display; } ;


 int exit (int) ;
 int exit_value ;
 int ipc_event_shutdown (char*) ;
 TYPE_1__ server ;
 int terminate_request ;
 int wl_display_terminate (int ) ;

void sway_terminate(int exit_code) {
 if (!server.wl_display) {

  exit(exit_code);
 } else {

  terminate_request = 1;
  exit_value = exit_code;
  ipc_event_shutdown("exit");
  wl_display_terminate(server.wl_display);
 }
}
