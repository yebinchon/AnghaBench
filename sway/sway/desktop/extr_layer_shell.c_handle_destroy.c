
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_14__ {int link; } ;
struct TYPE_13__ {int link; } ;
struct TYPE_12__ {int link; } ;
struct TYPE_11__ {int link; } ;
struct TYPE_10__ {int link; } ;
struct TYPE_9__ {int link; } ;
struct sway_layer_surface {TYPE_8__* layer_surface; TYPE_6__ output_destroy; TYPE_5__ new_popup; TYPE_4__ surface_commit; TYPE_3__ unmap; TYPE_2__ map; TYPE_1__ destroy; int link; } ;
struct TYPE_16__ {TYPE_7__* output; scalar_t__ mapped; int namespace; } ;
struct TYPE_15__ {struct sway_output* data; } ;


 int SWAY_DEBUG ;
 int arrange_layers (struct sway_output*) ;
 int destroy ;
 int free (struct sway_layer_surface*) ;
 struct sway_layer_surface* sway_layer ;
 int sway_log (int ,char*,int ) ;
 int transaction_commit_dirty () ;
 int unmap (struct sway_layer_surface*) ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *sway_layer =
  wl_container_of(listener, sway_layer, destroy);
 sway_log(SWAY_DEBUG, "Layer surface destroyed (%s)",
  sway_layer->layer_surface->namespace);
 if (sway_layer->layer_surface->mapped) {
  unmap(sway_layer);
 }
 wl_list_remove(&sway_layer->link);
 wl_list_remove(&sway_layer->destroy.link);
 wl_list_remove(&sway_layer->map.link);
 wl_list_remove(&sway_layer->unmap.link);
 wl_list_remove(&sway_layer->surface_commit.link);
 wl_list_remove(&sway_layer->new_popup.link);
 if (sway_layer->layer_surface->output != ((void*)0)) {
  struct sway_output *output = sway_layer->layer_surface->output->data;
  if (output != ((void*)0)) {
   arrange_layers(output);
   transaction_commit_dirty();
  }
  wl_list_remove(&sway_layer->output_destroy.link);
  sway_layer->layer_surface->output = ((void*)0);
 }
 free(sway_layer);
}
