
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_node {scalar_t__ type; struct sway_workspace* sway_workspace; TYPE_1__* sway_container; } ;
struct TYPE_4__ {int node; } ;
struct TYPE_3__ {struct sway_workspace* workspace; } ;


 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 TYPE_2__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;

struct sway_workspace *seat_get_focused_workspace(struct sway_seat *seat) {
 struct sway_node *focus = seat_get_focus_inactive(seat, &root->node);
 if (!focus) {
  return ((void*)0);
 }
 if (focus->type == N_CONTAINER) {
  return focus->sway_container->workspace;
 }
 if (focus->type == N_WORKSPACE) {
  return focus->sway_workspace;
 }
 return ((void*)0);
}
