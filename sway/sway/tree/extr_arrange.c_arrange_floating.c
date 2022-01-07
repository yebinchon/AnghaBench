
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int dummy; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;


 int arrange_container (struct sway_container*) ;

__attribute__((used)) static void arrange_floating(list_t *floating) {
 for (int i = 0; i < floating->length; ++i) {
  struct sway_container *floater = floating->items[i];
  arrange_container(floater);
 }
}
