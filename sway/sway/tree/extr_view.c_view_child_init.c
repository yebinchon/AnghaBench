
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int destroy; int new_subsurface; int commit; } ;
struct wlr_surface {TYPE_1__ events; } ;
struct sway_view_child_impl {int dummy; } ;
struct TYPE_14__ {int notify; } ;
struct TYPE_10__ {int notify; } ;
struct TYPE_9__ {int notify; } ;
struct sway_view_child {struct sway_view* view; struct wlr_surface* surface; TYPE_7__ view_unmap; TYPE_3__ surface_unmap; TYPE_2__ surface_map; TYPE_7__ surface_destroy; TYPE_7__ surface_new_subsurface; TYPE_7__ surface_commit; int children; struct sway_view_child_impl const* impl; } ;
struct TYPE_11__ {int unmap; } ;
struct sway_view {TYPE_6__* container; TYPE_4__ events; } ;
struct sway_output {int wlr_output; } ;
struct TYPE_13__ {TYPE_5__* workspace; } ;
struct TYPE_12__ {struct sway_output* output; } ;


 int view_child_handle_surface_commit ;
 int view_child_handle_surface_destroy ;
 int view_child_handle_surface_map ;
 int view_child_handle_surface_new_subsurface ;
 int view_child_handle_surface_unmap ;
 int view_child_handle_view_unmap ;
 int view_init_subsurfaces (struct sway_view*,struct wlr_surface*) ;
 int wl_list_init (int *) ;
 int wl_signal_add (int *,TYPE_7__*) ;
 int wlr_surface_send_enter (struct wlr_surface*,int ) ;

void view_child_init(struct sway_view_child *child,
  const struct sway_view_child_impl *impl, struct sway_view *view,
  struct wlr_surface *surface) {
 child->impl = impl;
 child->view = view;
 child->surface = surface;
 wl_list_init(&child->children);

 wl_signal_add(&surface->events.commit, &child->surface_commit);
 child->surface_commit.notify = view_child_handle_surface_commit;
 wl_signal_add(&surface->events.new_subsurface,
  &child->surface_new_subsurface);
 child->surface_new_subsurface.notify =
  view_child_handle_surface_new_subsurface;
 wl_signal_add(&surface->events.destroy, &child->surface_destroy);
 child->surface_destroy.notify = view_child_handle_surface_destroy;


 child->surface_map.notify = view_child_handle_surface_map;
 child->surface_unmap.notify = view_child_handle_surface_unmap;

 wl_signal_add(&view->events.unmap, &child->view_unmap);
 child->view_unmap.notify = view_child_handle_view_unmap;

 struct sway_output *output = child->view->container->workspace->output;
 wlr_surface_send_enter(child->surface, output->wlr_output);

 view_init_subsurfaces(child->view, surface);
}
