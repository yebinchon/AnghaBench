
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {int icon_theme_path; int interface; int icon_pixmap; int icon_name; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int sni_check_msg_sender (struct swaybar_sni*,int *,char*) ;
 int sni_get_property_async (struct swaybar_sni*,char*,char*,int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int handle_new_icon(sd_bus_message *msg, void *data, sd_bus_error *error) {
 struct swaybar_sni *sni = data;
 sni_get_property_async(sni, "IconName", "s", &sni->icon_name);
 sni_get_property_async(sni, "IconPixmap", ((void*)0), &sni->icon_pixmap);
 if (!strcmp(sni->interface, "org.kde.StatusNotifierItem")) {
  sni_get_property_async(sni, "IconThemePath", "s", &sni->icon_theme_path);
 }
 return sni_check_msg_sender(sni, msg, "icon");
}
