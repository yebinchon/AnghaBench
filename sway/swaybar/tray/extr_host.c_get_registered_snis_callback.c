
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct swaybar_tray {int dummy; } ;
typedef int sd_bus_message ;
struct TYPE_5__ {int message; } ;
typedef TYPE_1__ sd_bus_error ;


 int SWAY_ERROR ;
 int add_sni (struct swaybar_tray*,char*) ;
 int sd_bus_error_get_errno (TYPE_1__*) ;
 int sd_bus_message_enter_container (int *,char,int *) ;
 TYPE_1__* sd_bus_message_get_error (int *) ;
 scalar_t__ sd_bus_message_is_method_error (int *,int *) ;
 int sd_bus_message_read_strv (int *,char***) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static int get_registered_snis_callback(sd_bus_message *msg, void *data,
  sd_bus_error *error) {
 if (sd_bus_message_is_method_error(msg, ((void*)0))) {
  sd_bus_error err = *sd_bus_message_get_error(msg);
  sway_log(SWAY_ERROR, "Failed to get registered SNIs: %s", err.message);
  return -sd_bus_error_get_errno(&err);
 }

 int ret = sd_bus_message_enter_container(msg, 'v', ((void*)0));
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to read registered SNIs: %s", strerror(-ret));
  return ret;
 }

 char **ids;
 ret = sd_bus_message_read_strv(msg, &ids);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to read registered SNIs: %s", strerror(-ret));
  return ret;
 }

 if (ids) {
  struct swaybar_tray *tray = data;
  for (char **id = ids; *id; ++id) {
   add_sni(tray, *id);
  }
 }

 return ret;
}
