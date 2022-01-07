
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct TYPE_4__ {TYPE_1__* outputs; } ;
struct TYPE_3__ {int length; struct sway_output** items; } ;


 int output_for_each_workspace (struct sway_output*,void (*) (struct sway_workspace*,void*),void*) ;
 TYPE_2__* root ;

void root_for_each_workspace(void (*f)(struct sway_workspace *ws, void *data),
  void *data) {
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  output_for_each_workspace(output, f, data);
 }
}
