
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {char* service; int watcher_id; } ;
typedef int sd_bus_message ;


 int SD_BUS_CREDS_WELL_KNOWN_NAMES ;
 int SWAY_DEBUG ;
 int sd_bus_creds_get_mask (int ) ;
 int sd_bus_message_get_creds (int *) ;
 int sway_log (int ,char*,int ,char const*) ;

__attribute__((used)) static int sni_check_msg_sender(struct swaybar_sni *sni, sd_bus_message *msg,
  const char *signal) {
 bool has_well_known_names =
  sd_bus_creds_get_mask(sd_bus_message_get_creds(msg)) & SD_BUS_CREDS_WELL_KNOWN_NAMES;
 if (sni->service[0] == ':' || has_well_known_names) {
  sway_log(SWAY_DEBUG, "%s has new %s", sni->watcher_id, signal);
  return 1;
 } else {
  sway_log(SWAY_DEBUG, "%s may have new %s", sni->watcher_id, signal);
  return 0;
 }
}
