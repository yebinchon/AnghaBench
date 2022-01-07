
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int workspaces; } ;
struct TYPE_3__ {int destroying; scalar_t__ ntxnrefs; } ;
struct sway_output {TYPE_2__ current; int workspaces; TYPE_1__ node; int * wlr_output; } ;


 int free (struct sway_output*) ;
 int list_free (int ) ;
 int sway_assert (int,char*) ;

void output_destroy(struct sway_output *output) {
 if (!sway_assert(output->node.destroying,
    "Tried to free output which wasn't marked as destroying")) {
  return;
 }
 if (!sway_assert(output->wlr_output == ((void*)0),
    "Tried to free output which still had a wlr_output")) {
  return;
 }
 if (!sway_assert(output->node.ntxnrefs == 0, "Tried to free output "
    "which is still referenced by transactions")) {
  return;
 }
 list_free(output->workspaces);
 list_free(output->current.workspaces);
 free(output);
}
