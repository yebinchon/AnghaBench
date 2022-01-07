
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {struct swaybar_sni* icon_theme_path; struct swaybar_sni* menu; int attention_icon_pixmap; struct swaybar_sni* attention_icon_name; int icon_pixmap; struct swaybar_sni* icon_name; struct swaybar_sni* status; struct swaybar_sni* path; struct swaybar_sni* service; struct swaybar_sni* watcher_id; int new_status_slot; int new_attention_icon_slot; int new_icon_slot; int icon; } ;


 int cairo_surface_destroy (int ) ;
 int free (struct swaybar_sni*) ;
 int list_free_items_and_destroy (int ) ;
 int sd_bus_slot_unref (int ) ;

void destroy_sni(struct swaybar_sni *sni) {
 if (!sni) {
  return;
 }

 cairo_surface_destroy(sni->icon);

 sd_bus_slot_unref(sni->new_icon_slot);
 sd_bus_slot_unref(sni->new_attention_icon_slot);
 sd_bus_slot_unref(sni->new_status_slot);

 free(sni->watcher_id);
 free(sni->service);
 free(sni->path);
 free(sni->status);
 free(sni->icon_name);
 list_free_items_and_destroy(sni->icon_pixmap);
 free(sni->attention_icon_name);
 list_free_items_and_destroy(sni->attention_icon_pixmap);
 free(sni->menu);
 free(sni->icon_theme_path);
 free(sni);
}
