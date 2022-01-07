
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_config {int id; int * client; } ;


 int SWAY_DEBUG ;
 int invoke_swaybar (struct bar_config*) ;
 int sway_log (int ,char*,int ) ;
 int wl_client_destroy (int *) ;

void load_swaybar(struct bar_config *bar) {
 if (bar->client != ((void*)0)) {
  wl_client_destroy(bar->client);
 }
 sway_log(SWAY_DEBUG, "Invoking swaybar for bar id '%s'", bar->id);
 invoke_swaybar(bar);
}
