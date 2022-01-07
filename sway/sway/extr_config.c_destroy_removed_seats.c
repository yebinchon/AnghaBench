
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {int dummy; } ;
struct sway_config {TYPE_1__* seat_configs; } ;
struct seat_config {int name; } ;
struct TYPE_2__ {int length; struct seat_config** items; } ;


 struct sway_seat* input_manager_get_seat (int ,int) ;
 scalar_t__ list_seq_find (TYPE_1__*,int ,int ) ;
 int seat_destroy (struct sway_seat*) ;
 int seat_name_cmp ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void destroy_removed_seats(struct sway_config *old_config,
  struct sway_config *new_config) {
 struct seat_config *seat_config;
 struct sway_seat *seat;
 int i;
 for (i = 0; i < old_config->seat_configs->length; i++) {
  seat_config = old_config->seat_configs->items[i];

  if (strcmp(seat_config->name, "*") == 0) {
   continue;
  }


  if (new_config && list_seq_find(new_config->seat_configs,
    seat_name_cmp, seat_config->name) < 0) {
   seat = input_manager_get_seat(seat_config->name, 0);
   if (seat) {
    seat_destroy(seat);
   }
  }
 }
}
