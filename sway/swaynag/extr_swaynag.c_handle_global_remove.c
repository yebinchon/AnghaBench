
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wl_registry {int dummy; } ;
struct swaynag {int run_display; TYPE_1__* output; } ;
struct TYPE_2__ {scalar_t__ wl_name; } ;



__attribute__((used)) static void handle_global_remove(void *data, struct wl_registry *registry,
  uint32_t name) {
 struct swaynag *swaynag = data;
 if (swaynag->output->wl_name == name) {
  swaynag->run_display = 0;
 }
}
