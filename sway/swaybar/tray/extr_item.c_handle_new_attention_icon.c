
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {int attention_icon_pixmap; int attention_icon_name; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int sni_check_msg_sender (struct swaybar_sni*,int *,char*) ;
 int sni_get_property_async (struct swaybar_sni*,char*,char*,int *) ;

__attribute__((used)) static int handle_new_attention_icon(sd_bus_message *msg, void *data,
  sd_bus_error *error) {
 struct swaybar_sni *sni = data;
 sni_get_property_async(sni, "AttentionIconName", "s", &sni->attention_icon_name);
 sni_get_property_async(sni, "AttentionIconPixmap", ((void*)0), &sni->attention_icon_pixmap);
 return sni_check_msg_sender(sni, msg, "attention icon");
}
