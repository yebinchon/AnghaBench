
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int destroy; } ;
struct wlr_subsurface {TYPE_1__ events; int surface; } ;
struct sway_view_child {int view; int children; } ;
struct TYPE_7__ {int mapped; int link; struct sway_view_child* parent; } ;
struct TYPE_6__ {int notify; } ;
struct sway_subsurface {TYPE_3__ child; TYPE_2__ destroy; } ;


 int SWAY_ERROR ;
 struct sway_subsurface* calloc (int,int) ;
 int subsurface_handle_destroy ;
 int subsurface_impl ;
 int sway_log (int ,char*) ;
 int view_child_damage (TYPE_3__*,int) ;
 int view_child_init (TYPE_3__*,int *,int ,int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_2__*) ;

__attribute__((used)) static void view_child_subsurface_create(struct sway_view_child *child,
  struct wlr_subsurface *wlr_subsurface) {
 struct sway_subsurface *subsurface =
  calloc(1, sizeof(struct sway_subsurface));
 if (subsurface == ((void*)0)) {
  sway_log(SWAY_ERROR, "Allocation failed");
  return;
 }
 subsurface->child.parent = child;
 wl_list_insert(&child->children, &subsurface->child.link);
 view_child_init(&subsurface->child, &subsurface_impl, child->view,
  wlr_subsurface->surface);

 wl_signal_add(&wlr_subsurface->events.destroy, &subsurface->destroy);
 subsurface->destroy.notify = subsurface_handle_destroy;

 subsurface->child.mapped = 1;

 view_child_damage(&subsurface->child, 1);
}
