
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
struct sway_server {int dummy; } ;
struct TYPE_16__ {int link; } ;
struct TYPE_15__ {int link; } ;
struct TYPE_14__ {int link; } ;
struct TYPE_13__ {int link; } ;
struct TYPE_12__ {int link; } ;
struct TYPE_11__ {int link; } ;
struct TYPE_10__ {int link; } ;
struct TYPE_9__ {int destroy; } ;
struct sway_output {TYPE_8__ damage_frame; TYPE_7__ damage_destroy; TYPE_6__ present; TYPE_5__ scale; TYPE_4__ transform; TYPE_3__ mode; TYPE_2__ destroy; scalar_t__ enabled; TYPE_1__ events; struct sway_server* server; } ;


 int destroy ;
 struct sway_output* output ;
 int output_begin_destroy (struct sway_output*) ;
 int output_disable (struct sway_output*) ;
 int transaction_commit_dirty () ;
 int update_output_manager_config (struct sway_server*) ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;
 int wl_signal_emit (int *,struct sway_output*) ;

__attribute__((used)) static void handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_output *output = wl_container_of(listener, output, destroy);
 struct sway_server *server = output->server;
 wl_signal_emit(&output->events.destroy, output);

 if (output->enabled) {
  output_disable(output);
 }
 output_begin_destroy(output);

 wl_list_remove(&output->destroy.link);
 wl_list_remove(&output->mode.link);
 wl_list_remove(&output->transform.link);
 wl_list_remove(&output->scale.link);
 wl_list_remove(&output->present.link);
 wl_list_remove(&output->damage_destroy.link);
 wl_list_remove(&output->damage_frame.link);

 transaction_commit_dirty();

 update_output_manager_config(server);
}
