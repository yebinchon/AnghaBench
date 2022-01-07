
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct timespec {int dummy; } ;
struct TYPE_7__ {struct sway_container* fullscreen; } ;
struct sway_workspace {TYPE_3__ current; } ;
struct TYPE_6__ {struct sway_workspace* active_workspace; } ;
struct sway_output {int damage; TYPE_2__ current; TYPE_1__* wlr_output; int enabled; } ;
struct sway_container {scalar_t__ view; } ;
typedef int pixman_region32_t ;
struct TYPE_8__ {struct sway_container* fullscreen_global; } ;
struct TYPE_5__ {int enabled; } ;


 int CLOCK_MONOTONIC ;
 int SWAY_DEBUG ;
 int clock_gettime (int ,struct timespec*) ;
 int damage_frame ;
 struct sway_output* output ;
 int output_render (struct sway_output*,struct timespec*,int *) ;
 int pixman_region32_fini (int *) ;
 int pixman_region32_init (int *) ;
 TYPE_4__* root ;
 int scan_out_fullscreen_view (struct sway_output*,scalar_t__) ;
 int send_frame_done (struct sway_output*,struct timespec*) ;
 int sway_log (int ,char*) ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_output_damage_attach_render (int ,int*,int *) ;

__attribute__((used)) static void damage_handle_frame(struct wl_listener *listener, void *data) {
 struct sway_output *output =
  wl_container_of(listener, output, damage_frame);
 if (!output->enabled || !output->wlr_output->enabled) {
  return;
 }

 struct timespec now;
 clock_gettime(CLOCK_MONOTONIC, &now);

 struct sway_workspace *workspace = output->current.active_workspace;
 if (workspace == ((void*)0)) {
  return;
 }

 struct sway_container *fullscreen_con = root->fullscreen_global;
 if (!fullscreen_con) {
  fullscreen_con = workspace->current.fullscreen;
 }

 if (fullscreen_con && fullscreen_con->view) {

  static bool last_scanned_out = 0;
  bool scanned_out =
   scan_out_fullscreen_view(output, fullscreen_con->view);

  if (scanned_out && !last_scanned_out) {
   sway_log(SWAY_DEBUG, "Scanning out fullscreen view");
  }
  if (last_scanned_out && !scanned_out) {
   sway_log(SWAY_DEBUG, "Stopping fullscreen view scan out");
  }
  last_scanned_out = scanned_out;

  if (scanned_out) {
   goto frame_done;
  }
 }

 bool needs_frame;
 pixman_region32_t damage;
 pixman_region32_init(&damage);
 if (!wlr_output_damage_attach_render(output->damage,
   &needs_frame, &damage)) {
  return;
 }

 if (needs_frame) {
  output_render(output, &now, &damage);
 }

 pixman_region32_fini(&damage);

frame_done:

 send_frame_done(output, &now);
}
