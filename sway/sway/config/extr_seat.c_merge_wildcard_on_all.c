
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seat_config {int name; } ;
struct TYPE_4__ {TYPE_1__* seat_configs; } ;
struct TYPE_3__ {int length; struct seat_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_2__* config ;
 int merge_seat_config (struct seat_config*,struct seat_config*) ;
 scalar_t__ strcmp (int ,int ) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static void merge_wildcard_on_all(struct seat_config *wildcard) {
 for (int i = 0; i < config->seat_configs->length; i++) {
  struct seat_config *sc = config->seat_configs->items[i];
  if (strcmp(wildcard->name, sc->name) != 0) {
   sway_log(SWAY_DEBUG, "Merging seat * config on %s", sc->name);
   merge_seat_config(sc, wildcard);
  }
 }
}
