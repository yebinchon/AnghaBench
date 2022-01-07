
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* marks; } ;
struct TYPE_2__ {int length; char** items; } ;


 scalar_t__ strcmp (char*,char*) ;

bool container_has_mark(struct sway_container *con, char *mark) {
 for (int i = 0; i < con->marks->length; ++i) {
  char *item = con->marks->items[i];
  if (strcmp(item, mark) == 0) {
   return 1;
  }
 }
 return 0;
}
