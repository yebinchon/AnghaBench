
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swaybar_tray {int bar; TYPE_1__* items; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_3__ {int * items; } ;


 int SWAY_ERROR ;
 int SWAY_INFO ;
 int cmp_sni_id ;
 int destroy_sni (int ) ;
 int list_del (TYPE_1__*,int) ;
 int list_seq_find (TYPE_1__*,int ,char*) ;
 int sd_bus_message_read (int *,char*,char**) ;
 int set_bar_dirty (int ) ;
 char* strerror (int) ;
 int sway_log (int ,char*,char*) ;

__attribute__((used)) static int handle_sni_unregistered(sd_bus_message *msg, void *data,
  sd_bus_error *error) {
 char *id;
 int ret = sd_bus_message_read(msg, "s", &id);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse unregister SNI message: %s", strerror(-ret));
 }

 struct swaybar_tray *tray = data;
 int idx = list_seq_find(tray->items, cmp_sni_id, id);
 if (idx != -1) {
  sway_log(SWAY_INFO, "Unregistering Status Notifier Item '%s'", id);
  destroy_sni(tray->items->items[idx]);
  list_del(tray->items, idx);
  set_bar_dirty(tray->bar);
 }
 return ret;
}
