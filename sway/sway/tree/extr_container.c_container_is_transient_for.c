
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {scalar_t__ view; } ;
struct TYPE_2__ {scalar_t__ popup_during_fullscreen; } ;


 scalar_t__ POPUP_SMART ;
 TYPE_1__* config ;
 scalar_t__ view_is_transient_for (scalar_t__,scalar_t__) ;

bool container_is_transient_for(struct sway_container *child,
  struct sway_container *ancestor) {
 return config->popup_during_fullscreen == POPUP_SMART &&
  child->view && ancestor->view &&
  view_is_transient_for(child->view, ancestor->view);
}
