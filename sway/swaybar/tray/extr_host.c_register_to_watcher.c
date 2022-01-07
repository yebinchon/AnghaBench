
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_host {int watcher_interface; TYPE_1__* tray; int service; } ;
struct TYPE_2__ {int bus; } ;


 int SWAY_ERROR ;
 int get_registered_snis_callback ;
 int sd_bus_call_method_async (int ,int *,int ,int ,char*,char*,int ,TYPE_1__*,char*,int ,...) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;
 int watcher_path ;

__attribute__((used)) static bool register_to_watcher(struct swaybar_host *host) {

 int ret = sd_bus_call_method_async(host->tray->bus, ((void*)0),
   host->watcher_interface, watcher_path, host->watcher_interface,
   "RegisterStatusNotifierHost", ((void*)0), ((void*)0), "s", host->service);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to send register call: %s", strerror(-ret));
  return 0;
 }

 ret = sd_bus_call_method_async(host->tray->bus, ((void*)0),
   host->watcher_interface, watcher_path,
   "org.freedesktop.DBus.Properties", "Get",
   get_registered_snis_callback, host->tray, "ss",
   host->watcher_interface, "RegisteredStatusNotifierItems");
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to get registered SNIs: %s", strerror(-ret));
 }

 return ret >= 0;
}
