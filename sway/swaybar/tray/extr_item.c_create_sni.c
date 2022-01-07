
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_tray {int dummy; } ;
struct swaybar_sni {char* interface; int new_status_slot; int new_attention_icon_slot; int new_icon_slot; int menu; int item_is_menu; int attention_icon_pixmap; int attention_icon_name; int icon_pixmap; int icon_name; int status; int icon_theme_path; void* path; void* service; void* watcher_id; struct swaybar_tray* tray; } ;


 struct swaybar_sni* calloc (int,int) ;
 int handle_new_attention_icon ;
 int handle_new_icon ;
 int handle_new_status ;
 int sni_get_property_async (struct swaybar_sni*,char*,char*,int *) ;
 int sni_match_signal (struct swaybar_sni*,int *,char*,int ) ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;
 void* strndup (char*,int) ;

struct swaybar_sni *create_sni(char *id, struct swaybar_tray *tray) {
 struct swaybar_sni *sni = calloc(1, sizeof(struct swaybar_sni));
 if (!sni) {
  return ((void*)0);
 }
 sni->tray = tray;
 sni->watcher_id = strdup(id);
 char *path_ptr = strchr(id, '/');
 if (!path_ptr) {
  sni->service = strdup(id);
  sni->path = strdup("/StatusNotifierItem");
  sni->interface = "org.freedesktop.StatusNotifierItem";
 } else {
  sni->service = strndup(id, path_ptr - id);
  sni->path = strdup(path_ptr);
  sni->interface = "org.kde.StatusNotifierItem";
  sni_get_property_async(sni, "IconThemePath", "s", &sni->icon_theme_path);
 }



 sni_get_property_async(sni, "Status", "s", &sni->status);
 sni_get_property_async(sni, "IconName", "s", &sni->icon_name);
 sni_get_property_async(sni, "IconPixmap", ((void*)0), &sni->icon_pixmap);
 sni_get_property_async(sni, "AttentionIconName", "s", &sni->attention_icon_name);
 sni_get_property_async(sni, "AttentionIconPixmap", ((void*)0), &sni->attention_icon_pixmap);
 sni_get_property_async(sni, "ItemIsMenu", "b", &sni->item_is_menu);
 sni_get_property_async(sni, "Menu", "o", &sni->menu);

 sni_match_signal(sni, &sni->new_icon_slot, "NewIcon", handle_new_icon);
 sni_match_signal(sni, &sni->new_attention_icon_slot, "NewAttentionIcon",
   handle_new_attention_icon);
 sni_match_signal(sni, &sni->new_status_slot, "NewStatus", handle_new_status);

 return sni;
}
