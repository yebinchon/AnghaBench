
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_sni {int watcher_id; int interface; int path; int service; TYPE_1__* tray; } ;
struct get_property_data {char const* prop; char const* type; void* dest; struct swaybar_sni* sni; } ;
struct TYPE_2__ {int bus; } ;


 int SWAY_ERROR ;
 int get_property_callback ;
 struct get_property_data* malloc (int) ;
 int sd_bus_call_method_async (int ,int *,int ,int ,char*,char*,int ,struct get_property_data*,char*,int ,char const*) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ,char const*,int ) ;

__attribute__((used)) static void sni_get_property_async(struct swaybar_sni *sni, const char *prop,
  const char *type, void *dest) {
 struct get_property_data *data = malloc(sizeof(struct get_property_data));
 data->sni = sni;
 data->prop = prop;
 data->type = type;
 data->dest = dest;
 int ret = sd_bus_call_method_async(sni->tray->bus, ((void*)0), sni->service,
   sni->path, "org.freedesktop.DBus.Properties", "Get",
   get_property_callback, data, "ss", sni->interface, prop);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "%s %s: %s", sni->watcher_id, prop, strerror(-ret));
 }
}
