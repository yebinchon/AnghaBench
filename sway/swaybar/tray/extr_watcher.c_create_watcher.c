
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_watcher {int * interface; scalar_t__ version; void* items; void* hosts; int * bus; } ;
typedef int sd_bus_slot ;
typedef int sd_bus ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 struct swaybar_watcher* calloc (int,int) ;
 void* create_list () ;
 int destroy_watcher (struct swaybar_watcher*) ;
 int handle_lost_service ;
 int * malloc (size_t) ;
 int obj_path ;
 int sd_bus_add_object_vtable (int *,int **,int ,int *,int ,struct swaybar_watcher*) ;
 int sd_bus_match_signal (int *,int **,char*,char*,char*,char*,int ,struct swaybar_watcher*) ;
 int sd_bus_request_name (int *,int *,int ) ;
 int sd_bus_slot_set_floating (int *,int ) ;
 int sd_bus_slot_unref (int *) ;
 int snprintf (int *,size_t,char*,char*) ;
 int * strerror (int) ;
 int sway_log (int ,char*,int *) ;
 int watcher_vtable ;

struct swaybar_watcher *create_watcher(char *protocol, sd_bus *bus) {
 struct swaybar_watcher *watcher =
  calloc(1, sizeof(struct swaybar_watcher));
 if (!watcher) {
  return ((void*)0);
 }

 size_t len = snprintf(((void*)0), 0, "org.%s.StatusNotifierWatcher", protocol) + 1;
 watcher->interface = malloc(len);
 snprintf(watcher->interface, len, "org.%s.StatusNotifierWatcher", protocol);

 sd_bus_slot *signal_slot = ((void*)0), *vtable_slot = ((void*)0);
 int ret = sd_bus_add_object_vtable(bus, &vtable_slot, obj_path,
   watcher->interface, watcher_vtable, watcher);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to add object vtable: %s", strerror(-ret));
  goto error;
 }

 ret = sd_bus_match_signal(bus, &signal_slot, "org.freedesktop.DBus",
   "/org/freedesktop/DBus", "org.freedesktop.DBus",
   "NameOwnerChanged", handle_lost_service, watcher);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to subscribe to unregistering events: %s",
    strerror(-ret));
  goto error;
 }

 ret = sd_bus_request_name(bus, watcher->interface, 0);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to acquire service name: %s", strerror(-ret));
  goto error;
 }

 sd_bus_slot_set_floating(signal_slot, 0);
 sd_bus_slot_set_floating(vtable_slot, 0);

 watcher->bus = bus;
 watcher->hosts = create_list();
 watcher->items = create_list();
 watcher->version = 0;
 sway_log(SWAY_DEBUG, "Registered %s", watcher->interface);
 return watcher;
error:
 sd_bus_slot_unref(signal_slot);
 sd_bus_slot_unref(vtable_slot);
 destroy_watcher(watcher);
 return ((void*)0);
}
