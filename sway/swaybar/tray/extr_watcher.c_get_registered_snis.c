
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swaybar_watcher {TYPE_1__* items; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ items; } ;


 int list_add (TYPE_1__*,int *) ;
 int list_del (TYPE_1__*,scalar_t__) ;
 int sd_bus_message_append_strv (int *,char**) ;

__attribute__((used)) static int get_registered_snis(sd_bus *bus, const char *obj_path,
  const char *interface, const char *property, sd_bus_message *reply,
  void *data, sd_bus_error *error) {
 struct swaybar_watcher *watcher = data;
 list_add(watcher->items, ((void*)0));
 int ret = sd_bus_message_append_strv(reply, (char **)watcher->items->items);
 list_del(watcher->items, watcher->items->length - 1);
 return ret;
}
