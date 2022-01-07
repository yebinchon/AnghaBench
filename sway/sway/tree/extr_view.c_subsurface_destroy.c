
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view_child {int * impl; } ;
struct TYPE_2__ {int link; } ;
struct sway_subsurface {TYPE_1__ destroy; } ;


 int free (struct sway_subsurface*) ;
 int subsurface_impl ;
 int sway_assert (int,char*) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void subsurface_destroy(struct sway_view_child *child) {
 if (!sway_assert(child->impl == &subsurface_impl,
   "Expected a subsurface")) {
  return;
 }
 struct sway_subsurface *subsurface = (struct sway_subsurface *)child;
 wl_list_remove(&subsurface->destroy.link);
 free(subsurface);
}
