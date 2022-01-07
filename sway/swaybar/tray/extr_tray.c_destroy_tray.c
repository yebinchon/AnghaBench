
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_tray {int basedirs; int themes; int bus; int watcher_kde; int watcher_xdg; TYPE_1__* items; int host_kde; int host_xdg; } ;
struct TYPE_2__ {int length; int * items; } ;


 int destroy_sni (int ) ;
 int destroy_watcher (int ) ;
 int finish_host (int *) ;
 int finish_themes (int ,int ) ;
 int free (struct swaybar_tray*) ;
 int list_free (TYPE_1__*) ;
 int sd_bus_flush_close_unref (int ) ;

void destroy_tray(struct swaybar_tray *tray) {
 if (!tray) {
  return;
 }
 finish_host(&tray->host_xdg);
 finish_host(&tray->host_kde);
 for (int i = 0; i < tray->items->length; ++i) {
  destroy_sni(tray->items->items[i]);
 }
 list_free(tray->items);
 destroy_watcher(tray->watcher_xdg);
 destroy_watcher(tray->watcher_kde);
 sd_bus_flush_close_unref(tray->bus);
 finish_themes(tray->themes, tray->basedirs);
 free(tray);
}
