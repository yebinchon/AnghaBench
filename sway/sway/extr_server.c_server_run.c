
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_server {int wl_display; int socket; } ;


 int SWAY_INFO ;
 int sway_log (int ,char*,int ) ;
 int wl_display_run (int ) ;

void server_run(struct sway_server *server) {
 sway_log(SWAY_INFO, "Running compositor on wayland display '%s'",
   server->socket);
 wl_display_run(server->wl_display);
}
