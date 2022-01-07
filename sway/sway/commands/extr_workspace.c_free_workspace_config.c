
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workspace_config {int outputs; struct workspace_config* workspace; } ;


 int free (struct workspace_config*) ;
 int list_free_items_and_destroy (int ) ;

void free_workspace_config(struct workspace_config *wsc) {
 free(wsc->workspace);
 list_free_items_and_destroy(wsc->outputs);
 free(wsc);
}
