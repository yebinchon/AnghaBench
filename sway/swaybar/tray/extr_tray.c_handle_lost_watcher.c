
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_tray {int bus; void* watcher_kde; void* watcher_xdg; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_ERROR ;
 void* create_watcher (char*,int ) ;
 int sd_bus_message_read (int *,char*,char**,char**,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static int handle_lost_watcher(sd_bus_message *msg,
  void *data, sd_bus_error *error) {
 char *service, *old_owner, *new_owner;
 int ret = sd_bus_message_read(msg, "sss", &service, &old_owner, &new_owner);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse owner change message: %s", strerror(-ret));
  return ret;
 }

 if (!*new_owner) {
  struct swaybar_tray *tray = data;
  if (strcmp(service, "org.freedesktop.StatusNotifierWatcher") == 0) {
   tray->watcher_xdg = create_watcher("freedesktop", tray->bus);
  } else if (strcmp(service, "org.kde.StatusNotifierWatcher") == 0) {
   tray->watcher_kde = create_watcher("kde", tray->bus);
  }
 }

 return 0;
}
