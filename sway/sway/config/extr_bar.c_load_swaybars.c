
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bar_config {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bars; } ;
struct TYPE_3__ {int length; struct bar_config** items; } ;


 TYPE_2__* config ;
 int load_swaybar (struct bar_config*) ;

void load_swaybars(void) {
 for (int i = 0; i < config->bars->length; ++i) {
  struct bar_config *bar = config->bars->items[i];
  load_swaybar(bar);
 }
}
