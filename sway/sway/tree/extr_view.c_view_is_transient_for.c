
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {scalar_t__ (* is_transient_for ) (struct sway_view*,struct sway_view*) ;} ;


 scalar_t__ stub1 (struct sway_view*,struct sway_view*) ;

bool view_is_transient_for(struct sway_view *child,
  struct sway_view *ancestor) {
 return child->impl->is_transient_for &&
  child->impl->is_transient_for(child, ancestor);
}
