
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_tray {int dummy; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SWAY_ERROR ;
 int add_sni (struct swaybar_tray*,char*) ;
 int sd_bus_message_read (int *,char*,char**) ;
 int strerror (int) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static int handle_sni_registered(sd_bus_message *msg, void *data,
  sd_bus_error *error) {
 char *id;
 int ret = sd_bus_message_read(msg, "s", &id);
 if (ret < 0) {
  sway_log(SWAY_ERROR, "Failed to parse register SNI message: %s", strerror(-ret));
 }

 struct swaybar_tray *tray = data;
 add_sni(tray, id);

 return ret;
}
