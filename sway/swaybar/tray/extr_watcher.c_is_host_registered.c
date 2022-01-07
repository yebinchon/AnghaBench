
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_watcher {TYPE_1__* hosts; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
struct TYPE_2__ {scalar_t__ length; } ;


 int sd_bus_message_append_basic (int *,char,int*) ;

__attribute__((used)) static int is_host_registered(sd_bus *bus, const char *obj_path,
  const char *interface, const char *property, sd_bus_message *reply,
  void *data, sd_bus_error *error) {
 struct swaybar_watcher *watcher = data;
 int val = watcher->hosts->length > 0;
 return sd_bus_message_append_basic(reply, 'b', &val);
}
