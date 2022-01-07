
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seat_config {int name; } ;
struct TYPE_4__ {TYPE_1__* seat_configs; } ;
struct TYPE_3__ {int length; struct seat_config** items; } ;


 TYPE_2__* config ;
 scalar_t__ strcmp (char const*,int ) ;

struct seat_config *seat_get_config_by_name(const char *name) {
 struct seat_config *seat_config = ((void*)0);
 for (int i = 0; i < config->seat_configs->length; ++i ) {
  seat_config = config->seat_configs->items[i];
  if (strcmp(name, seat_config->name) == 0) {
   return seat_config;
  }
 }

 return ((void*)0);
}
