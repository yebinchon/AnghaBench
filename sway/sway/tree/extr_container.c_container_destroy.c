
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int children; } ;
struct TYPE_4__ {int destroying; scalar_t__ ntxnrefs; } ;
struct sway_container {TYPE_3__* view; int marks_urgent; int marks_unfocused; int marks_focused_inactive; int marks_focused; int marks; int outputs; TYPE_2__ current; int children; int title_urgent; int title_unfocused; int title_focused_inactive; int title_focused; struct sway_container* formatted_title; struct sway_container* title; TYPE_1__ node; } ;
struct TYPE_6__ {scalar_t__ destroying; struct sway_container* container; } ;


 int free (struct sway_container*) ;
 int list_free (int ) ;
 int list_free_items_and_destroy (int ) ;
 int sway_assert (int,char*) ;
 int view_destroy (TYPE_3__*) ;
 int wlr_texture_destroy (int ) ;

void container_destroy(struct sway_container *con) {
 if (!sway_assert(con->node.destroying,
    "Tried to free container which wasn't marked as destroying")) {
  return;
 }
 if (!sway_assert(con->node.ntxnrefs == 0, "Tried to free container "
    "which is still referenced by transactions")) {
  return;
 }
 free(con->title);
 free(con->formatted_title);
 wlr_texture_destroy(con->title_focused);
 wlr_texture_destroy(con->title_focused_inactive);
 wlr_texture_destroy(con->title_unfocused);
 wlr_texture_destroy(con->title_urgent);
 list_free(con->children);
 list_free(con->current.children);
 list_free(con->outputs);

 list_free_items_and_destroy(con->marks);
 wlr_texture_destroy(con->marks_focused);
 wlr_texture_destroy(con->marks_focused_inactive);
 wlr_texture_destroy(con->marks_unfocused);
 wlr_texture_destroy(con->marks_urgent);

 if (con->view) {
  if (con->view->container == con) {
   con->view->container = ((void*)0);
  }
  if (con->view->destroying) {
   view_destroy(con->view);
  }
 }

 free(con);
}
