
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_watcher {struct swaybar_watcher* interface; int items; int hosts; } ;


 int free (struct swaybar_watcher*) ;
 int list_free_items_and_destroy (int ) ;

void destroy_watcher(struct swaybar_watcher *watcher) {
 if (!watcher) {
  return;
 }
 list_free_items_and_destroy(watcher->hosts);
 list_free_items_and_destroy(watcher->items);
 free(watcher->interface);
 free(watcher);
}
