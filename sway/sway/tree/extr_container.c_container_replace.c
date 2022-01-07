
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;
struct sway_container {int fullscreen_mode; int scratchpad; float width_fraction; float height_fraction; struct sway_workspace* workspace; scalar_t__ parent; } ;
typedef enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;





 int container_add_sibling (struct sway_container*,struct sway_container*,int) ;
 int container_detach (struct sway_container*) ;
 int container_fullscreen_disable (struct sway_container*) ;
 int container_fullscreen_global (struct sway_container*) ;
 int container_fullscreen_workspace (struct sway_container*) ;
 int root_scratchpad_add_container (struct sway_container*,struct sway_workspace*) ;
 int root_scratchpad_remove_container (struct sway_container*) ;
 int root_scratchpad_show (struct sway_container*) ;

void container_replace(struct sway_container *container,
  struct sway_container *replacement) {
 enum sway_fullscreen_mode fullscreen = container->fullscreen_mode;
 bool scratchpad = container->scratchpad;
 struct sway_workspace *ws = ((void*)0);
 if (fullscreen != 129) {
  container_fullscreen_disable(container);
 }
 if (scratchpad) {
  ws = container->workspace;
  root_scratchpad_show(container);
  root_scratchpad_remove_container(container);
 }
 if (container->parent || container->workspace) {
  float width_fraction = container->width_fraction;
  float height_fraction = container->height_fraction;
  container_add_sibling(container, replacement, 1);
  container_detach(container);
  replacement->width_fraction = width_fraction;
  replacement->height_fraction = height_fraction;
 }
 if (scratchpad) {
  root_scratchpad_add_container(replacement, ws);
 }
 switch (fullscreen) {
 case 128:
  container_fullscreen_workspace(replacement);
  break;
 case 130:
  container_fullscreen_global(replacement);
  break;
 case 129:

  break;
 }
}
