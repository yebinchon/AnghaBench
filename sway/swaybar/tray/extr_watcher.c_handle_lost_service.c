
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swaybar_watcher {TYPE_1__* hosts; int interface; int bus; TYPE_1__* items; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_3__ {int length; char** items; } ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int cmp_id (char*,char*) ;
 int free (char*) ;
 int list_del (TYPE_1__*,int) ;
 int list_seq_find (TYPE_1__*,int (*) (char*,char*),char*) ;
 int obj_path ;
 int sd_bus_emit_signal (int ,int ,int ,char*,char*,char*) ;
 int sd_bus_message_read (int *,char*,char**,char**,char**) ;
 char* strerror (int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 int sway_log (int ,char*,char*) ;
 scalar_t__ using_standard_protocol (struct swaybar_watcher*) ;

__attribute__((used)) static int handle_lost_service(sd_bus_message *msg,
  void *data, sd_bus_error *error) {
 char *service, *old_owner, *new_owner;
 int ret = sd_bus_message_read(msg, "sss", &service, &old_owner, &new_owner);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse owner change message: %s", strerror(-ret));
  return ret;
 }

 if (!*new_owner) {
  struct swaybar_watcher *watcher = data;
  for (int idx = 0; idx < watcher->items->length; ++idx) {
   char *id = watcher->items->items[idx];
   int cmp_res = using_standard_protocol(watcher) ?
    cmp_id(id, service) : strncmp(id, service, strlen(service));
   if (cmp_res == 0) {
    sway_log(SWAY_DEBUG, "Unregistering Status Notifier Item '%s'", id);
    list_del(watcher->items, idx--);
    sd_bus_emit_signal(watcher->bus, obj_path, watcher->interface,
      "StatusNotifierItemUnregistered", "s", id);
    free(id);
    if (using_standard_protocol(watcher)) {
     break;
    }
   }
  }

  int idx = list_seq_find(watcher->hosts, cmp_id, service);
  if (idx != -1) {
   sway_log(SWAY_DEBUG, "Unregistering Status Notifier Host '%s'", service);
   free(watcher->hosts->items[idx]);
   list_del(watcher->hosts, idx);
  }
 }

 return 0;
}
