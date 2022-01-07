
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_seat {TYPE_2__* wlr_seat; } ;
struct seat_config {int name; } ;
struct TYPE_6__ {TYPE_1__* seat_configs; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int length; struct seat_config** items; } ;


 TYPE_3__* config ;
 scalar_t__ strcmp (int ,int ) ;

struct seat_config *seat_get_config(struct sway_seat *seat) {
 struct seat_config *seat_config = ((void*)0);
 for (int i = 0; i < config->seat_configs->length; ++i ) {
  seat_config = config->seat_configs->items[i];
  if (strcmp(seat->wlr_seat->name, seat_config->name) == 0) {
   return seat_config;
  }
 }

 return ((void*)0);
}
