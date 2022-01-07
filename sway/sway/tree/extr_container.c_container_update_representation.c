
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ workspace; struct sway_container* parent; int * formatted_title; int children; int layout; int view; } ;


 int * calloc (size_t,int) ;
 size_t container_build_representation (int ,int ,int *) ;
 int container_calculate_title_height (struct sway_container*) ;
 int container_update_title_textures (struct sway_container*) ;
 int free (int *) ;
 int sway_assert (int *,char*) ;
 int workspace_update_representation (scalar_t__) ;

void container_update_representation(struct sway_container *con) {
 if (!con->view) {
  size_t len = container_build_representation(con->layout,
    con->children, ((void*)0));
  free(con->formatted_title);
  con->formatted_title = calloc(len + 1, sizeof(char));
  if (!sway_assert(con->formatted_title,
     "Unable to allocate title string")) {
   return;
  }
  container_build_representation(con->layout, con->children,
    con->formatted_title);
  container_calculate_title_height(con);
  container_update_title_textures(con);
 }
 if (con->parent) {
  container_update_representation(con->parent);
 } else if (con->workspace) {
  workspace_update_representation(con->workspace);
 }
}
