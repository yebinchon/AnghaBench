
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int * representation; int tiling; int layout; } ;


 int * calloc (size_t,int) ;
 size_t container_build_representation (int ,int ,int *) ;
 int free (int *) ;
 int sway_assert (int *,char*) ;

void workspace_update_representation(struct sway_workspace *ws) {
 size_t len = container_build_representation(ws->layout, ws->tiling, ((void*)0));
 free(ws->representation);
 ws->representation = calloc(len + 1, sizeof(char));
 if (!sway_assert(ws->representation, "Unable to allocate title string")) {
  return;
 }
 container_build_representation(ws->layout, ws->tiling, ws->representation);
}
