
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swaynag_type {int name; } ;
struct TYPE_3__ {int length; struct swaynag_type** items; } ;
typedef TYPE_1__ list_t ;


 scalar_t__ strcasecmp (int ,char*) ;

struct swaynag_type *swaynag_type_get(list_t *types, char *name) {
 for (int i = 0; i < types->length; i++) {
  struct swaynag_type *type = types->items[i];
  if (strcasecmp(type->name, name) == 0) {
   return type;
  }
 }
 return ((void*)0);
}
