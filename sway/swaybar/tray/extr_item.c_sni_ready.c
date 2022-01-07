
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {char* status; scalar_t__ icon_pixmap; scalar_t__ icon_name; scalar_t__ attention_icon_pixmap; scalar_t__ attention_icon_name; } ;



__attribute__((used)) static bool sni_ready(struct swaybar_sni *sni) {
 return sni->status && (sni->status[0] == 'N' ?
   sni->attention_icon_name || sni->attention_icon_pixmap :
   sni->icon_name || sni->icon_pixmap);
}
