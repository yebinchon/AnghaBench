
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {TYPE_1__* wlr_seat; } ;
struct seat_config {int fallback; } ;
struct TYPE_2__ {int name; } ;


 int SWAY_DEBUG ;
 int input_has_seat_fallback_configuration () ;
 int input_manager_apply_seat_config (struct seat_config*) ;
 struct sway_seat* input_manager_get_default_seat () ;
 struct seat_config* new_seat_config (int ) ;
 struct seat_config* store_seat_config (struct seat_config*) ;
 int sway_log (int ,char*) ;

void input_manager_verify_fallback_seat(void) {
 struct sway_seat *seat = ((void*)0);
 if (!input_has_seat_fallback_configuration()) {
  sway_log(SWAY_DEBUG, "no fallback seat config - creating default");
  seat = input_manager_get_default_seat();
  struct seat_config *sc = new_seat_config(seat->wlr_seat->name);
  sc->fallback = 1;
  sc = store_seat_config(sc);
  input_manager_apply_seat_config(sc);
 }
}
