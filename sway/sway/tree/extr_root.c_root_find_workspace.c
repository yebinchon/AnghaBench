
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_4__ {TYPE_1__* outputs; } ;
struct TYPE_3__ {int length; struct sway_output** items; } ;


 struct sway_workspace* output_find_workspace (struct sway_output*,int (*) (struct sway_workspace*,void*),void*) ;
 TYPE_2__* root ;

struct sway_workspace *root_find_workspace(
  bool (*test)(struct sway_workspace *ws, void *data), void *data) {
 struct sway_workspace *result = ((void*)0);
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  if ((result = output_find_workspace(output, test, data))) {
   return result;
  }
 }
 return ((void*)0);
}
