
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_watcher {int interface; int bus; int items; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int cmp_id ;
 int free (char*) ;
 int list_add (int ,char*) ;
 int list_seq_find (int ,int ,char*) ;
 char* malloc (size_t) ;
 int obj_path ;
 int sd_bus_emit_signal (int ,int ,int ,char*,char*,char*) ;
 char* sd_bus_message_get_sender (int *) ;
 int sd_bus_message_read (int *,char*,char**) ;
 int sd_bus_reply_method_return (int *,char*) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 char* strdup (char*) ;
 char* strerror (int) ;
 int sway_log (int ,char*,char*) ;
 scalar_t__ using_standard_protocol (struct swaybar_watcher*) ;

__attribute__((used)) static int register_sni(sd_bus_message *msg, void *data, sd_bus_error *error) {
 char *service_or_path, *id;
 int ret = sd_bus_message_read(msg, "s", &service_or_path);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse register SNI message: %s", strerror(-ret));
  return ret;
 }

 struct swaybar_watcher *watcher = data;
 if (using_standard_protocol(watcher)) {
  id = strdup(service_or_path);
 } else {
  const char *service, *path;
  if (service_or_path[0] == '/') {
   service = sd_bus_message_get_sender(msg);
   path = service_or_path;
  } else {
   service = service_or_path;
   path = "/StatusNotifierItem";
  }
  size_t id_len = snprintf(((void*)0), 0, "%s%s", service, path) + 1;
  id = malloc(id_len);
  snprintf(id, id_len, "%s%s", service, path);
 }

 if (list_seq_find(watcher->items, cmp_id, id) == -1) {
  sway_log(SWAY_DEBUG, "Registering Status Notifier Item '%s'", id);
  list_add(watcher->items, id);
  sd_bus_emit_signal(watcher->bus, obj_path, watcher->interface,
    "StatusNotifierItemRegistered", "s", id);
 } else {
  sway_log(SWAY_DEBUG, "Status Notifier Item '%s' already registered", id);
  free(id);
 }

 return sd_bus_reply_method_return(msg, "");
}
