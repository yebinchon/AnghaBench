
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct wlr_presentation_event {int flags; int seq; int refresh; int tv_nsec; int tv_sec; int output; } ;
struct wlr_output_event_present {int flags; int seq; int refresh; TYPE_1__* when; } ;
struct wl_listener {int dummy; } ;
struct sway_output {int wlr_output; int enabled; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;


 struct sway_output* output ;
 int output_for_each_surface (struct sway_output*,int ,struct wlr_presentation_event*) ;
 int present ;
 int send_presented_iterator ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_present(struct wl_listener *listener, void *data) {
 struct sway_output *output = wl_container_of(listener, output, present);
 struct wlr_output_event_present *output_event = data;

 if (!output->enabled) {
  return;
 }

 struct wlr_presentation_event event = {
  .output = output->wlr_output,
  .tv_sec = (uint64_t)output_event->when->tv_sec,
  .tv_nsec = (uint32_t)output_event->when->tv_nsec,
  .refresh = (uint32_t)output_event->refresh,
  .seq = (uint64_t)output_event->seq,
  .flags = output_event->flags,
 };
 output_for_each_surface(output, send_presented_iterator, &event);
}
