
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int dummy; } ;
struct sway_container {int layout; scalar_t__ fullscreen_mode; int node; int y; int x; int height_fraction; int width_fraction; int height; int width; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 int container_add_child (struct sway_container*,struct sway_container*) ;
 struct sway_container* container_create (int *) ;
 int container_replace (struct sway_container*,struct sway_container*) ;
 struct sway_seat* input_manager_get_default_seat () ;
 int * seat_get_focus (struct sway_seat*) ;
 int seat_set_focus (struct sway_seat*,int *) ;
 int seat_set_raw_focus (struct sway_seat*,int *) ;

struct sway_container *container_split(struct sway_container *child,
  enum sway_container_layout layout) {
 struct sway_seat *seat = input_manager_get_default_seat();
 bool set_focus = (seat_get_focus(seat) == &child->node);

 struct sway_container *cont = container_create(((void*)0));
 cont->width = child->width;
 cont->height = child->height;
 cont->width_fraction = child->width_fraction;
 cont->height_fraction = child->height_fraction;
 cont->x = child->x;
 cont->y = child->y;
 cont->layout = layout;

 container_replace(child, cont);
 container_add_child(cont, child);

 if (set_focus) {
  seat_set_raw_focus(seat, &cont->node);
  if (cont->fullscreen_mode == FULLSCREEN_GLOBAL) {
   seat_set_focus(seat, &child->node);
  } else {
   seat_set_raw_focus(seat, &child->node);
  }
 }

 return cont;
}
