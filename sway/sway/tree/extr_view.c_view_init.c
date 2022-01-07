
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view_impl {int dummy; } ;
struct TYPE_2__ {int unmap; } ;
struct sway_view {int type; int allow_request_urgent; TYPE_1__ events; int executed_criteria; struct sway_view_impl const* impl; } ;
typedef enum sway_view_type { ____Placeholder_sway_view_type } sway_view_type ;


 int create_list () ;
 int wl_signal_init (int *) ;

void view_init(struct sway_view *view, enum sway_view_type type,
  const struct sway_view_impl *impl) {
 view->type = type;
 view->impl = impl;
 view->executed_criteria = create_list();
 view->allow_request_urgent = 1;
 wl_signal_init(&view->events.unmap);
}
