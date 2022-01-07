
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_watcher {int interface; int bus; int hosts; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int cmp_id ;
 int list_add (int ,int ) ;
 int list_seq_find (int ,int ,char*) ;
 int obj_path ;
 int sd_bus_emit_signal (int ,int ,int ,char*,char*,char*) ;
 int sd_bus_message_read (int *,char*,char**) ;
 int sd_bus_reply_method_return (int *,char*) ;
 int strdup (char*) ;
 char* strerror (int) ;
 int sway_log (int ,char*,char*) ;

__attribute__((used)) static int register_host(sd_bus_message *msg, void *data, sd_bus_error *error) {
 char *service;
 int ret = sd_bus_message_read(msg, "s", &service);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse register host message: %s", strerror(-ret));
  return ret;
 }

 struct swaybar_watcher *watcher = data;
 if (list_seq_find(watcher->hosts, cmp_id, service) == -1) {
  sway_log(SWAY_DEBUG, "Registering Status Notifier Host '%s'", service);
  list_add(watcher->hosts, strdup(service));
  sd_bus_emit_signal(watcher->bus, obj_path, watcher->interface,
    "StatusNotifierHostRegistered", "s", service);
 } else {
  sway_log(SWAY_DEBUG, "Status Notifier Host '%s' already registered", service);
 }

 return sd_bus_reply_method_return(msg, "");
}
