
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct sway_container {TYPE_1__* outputs; } ;
struct TYPE_2__ {int length; struct sway_output** items; } ;



struct sway_output *container_get_effective_output(struct sway_container *con) {
 if (con->outputs->length == 0) {
  return ((void*)0);
 }
 return con->outputs->items[con->outputs->length - 1];
}
