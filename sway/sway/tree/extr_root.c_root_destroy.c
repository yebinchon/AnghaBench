
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct sway_root {int output_layout; int outputs; int scratchpad; TYPE_1__ output_layout_change; } ;


 int free (struct sway_root*) ;
 int list_free (int ) ;
 int wl_list_remove (int *) ;
 int wlr_output_layout_destroy (int ) ;

void root_destroy(struct sway_root *root) {
 wl_list_remove(&root->output_layout_change.link);
 list_free(root->scratchpad);
 list_free(root->outputs);
 wlr_output_layout_destroy(root->output_layout);
 free(root);
}
