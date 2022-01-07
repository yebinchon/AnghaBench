
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_host {int watcher_interface; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_ERROR ;
 int register_to_watcher (struct swaybar_host*) ;
 int sd_bus_message_read (int *,char*,char**,char**,char**) ;
 scalar_t__ strcmp (char*,int ) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static int handle_new_watcher(sd_bus_message *msg,
  void *data, sd_bus_error *error) {
 char *service, *old_owner, *new_owner;
 int ret = sd_bus_message_read(msg, "sss", &service, &old_owner, &new_owner);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse owner change message: %s", strerror(-ret));
  return ret;
 }

 if (!*old_owner) {
  struct swaybar_host *host = data;
  if (strcmp(service, host->watcher_interface) == 0) {
   register_to_watcher(host);
  }
 }

 return 0;
}
