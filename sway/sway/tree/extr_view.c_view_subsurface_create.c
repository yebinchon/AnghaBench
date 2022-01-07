
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int destroy; } ;
struct wlr_subsurface {TYPE_1__ events; int surface; } ;
struct sway_view {int dummy; } ;
struct TYPE_7__ {int mapped; } ;
struct TYPE_6__ {int notify; } ;
struct sway_subsurface {TYPE_3__ child; TYPE_2__ destroy; } ;


 int SWAY_ERROR ;
 struct sway_subsurface* calloc (int,int) ;
 int subsurface_handle_destroy ;
 int subsurface_impl ;
 int sway_log (int ,char*) ;
 int view_child_damage (TYPE_3__*,int) ;
 int view_child_init (TYPE_3__*,int *,struct sway_view*,int ) ;
 int wl_signal_add (int *,TYPE_2__*) ;

__attribute__((used)) static void view_subsurface_create(struct sway_view *view,
  struct wlr_subsurface *wlr_subsurface) {
 struct sway_subsurface *subsurface =
  calloc(1, sizeof(struct sway_subsurface));
 if (subsurface == ((void*)0)) {
  sway_log(SWAY_ERROR, "Allocation failed");
  return;
 }
 view_child_init(&subsurface->child, &subsurface_impl, view,
  wlr_subsurface->surface);

 wl_signal_add(&wlr_subsurface->events.destroy, &subsurface->destroy);
 subsurface->destroy.notify = subsurface_handle_destroy;

 subsurface->child.mapped = 1;

 view_child_damage(&subsurface->child, 1);
}
