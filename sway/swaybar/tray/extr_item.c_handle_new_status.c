
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {int status; int watcher_id; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int free (int ) ;
 int sd_bus_message_read (int *,char*,char**) ;
 int set_sni_dirty (struct swaybar_sni*) ;
 int sni_check_msg_sender (struct swaybar_sni*,int *,char*) ;
 int sni_get_property_async (struct swaybar_sni*,char*,char*,int *) ;
 int strdup (char*) ;
 char* strerror (int) ;
 int sway_log (int ,char*,int ,char*) ;

__attribute__((used)) static int handle_new_status(sd_bus_message *msg, void *data, sd_bus_error *error) {
 struct swaybar_sni *sni = data;
 int ret = sni_check_msg_sender(sni, msg, "status");
 if (ret == 1) {
  char *status;
  int r = sd_bus_message_read(msg, "s", &status);
  if (r < 0) {
   sway_log(SWAY_ERROR, "%s new status error: %s", sni->watcher_id, strerror(-ret));
   ret = r;
  } else {
   free(sni->status);
   sni->status = strdup(status);
   sway_log(SWAY_DEBUG, "%s has new status = '%s'", sni->watcher_id, status);
   set_sni_dirty(sni);
  }
 } else {
  sni_get_property_async(sni, "Status", "s", &sni->status);
 }

 return ret;
}
