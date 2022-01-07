
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bar_config {int modifier; int visible_by_modifier; int hidden_state; int mode; } ;
struct TYPE_4__ {TYPE_1__* bars; } ;
struct TYPE_3__ {int length; struct bar_config** items; } ;


 TYPE_2__* config ;
 int ipc_event_bar_state_update (struct bar_config*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void determine_bar_visibility(uint32_t modifiers) {
 for (int i = 0; i < config->bars->length; ++i) {
  struct bar_config *bar = config->bars->items[i];
  if (bar->modifier == 0) {
   continue;
  }

  bool vis_by_mod = (~modifiers & bar->modifier) == 0;
  if (bar->visible_by_modifier != vis_by_mod) {



   if (bar->visible_by_modifier
     || strcmp(bar->mode, bar->hidden_state) == 0) {
    bar->visible_by_modifier = vis_by_mod;
    ipc_event_bar_state_update(bar);
   }
  }
 }
}
