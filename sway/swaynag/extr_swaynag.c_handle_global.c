
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct zxdg_output_v1 {int dummy; } ;
struct wl_registry {int dummy; } ;
struct swaynag_output {int wl_name; int scale; void* wl_output; int link; struct swaynag* swaynag; } ;
struct swaynag {void* xdg_output_manager; void* layer_shell; int outputs; int querying_outputs; int output; void* shm; void* seat; void* compositor; } ;
struct TYPE_8__ {int name; } ;


 int ZXDG_OUTPUT_V1_NAME_SINCE_VERSION ;
 struct swaynag_output* calloc (int,int) ;
 int output_listener ;
 int seat_listener ;
 scalar_t__ strcmp (char const*,int ) ;
 TYPE_1__ wl_compositor_interface ;
 int wl_list_insert (int *,int *) ;
 int wl_output_add_listener (void*,int *,struct swaynag_output*) ;
 TYPE_1__ wl_output_interface ;
 void* wl_registry_bind (struct wl_registry*,int,TYPE_1__*,int) ;
 int wl_seat_add_listener (void*,int *,struct swaynag*) ;
 TYPE_1__ wl_seat_interface ;
 TYPE_1__ wl_shm_interface ;
 int xdg_output_listener ;
 TYPE_1__ zwlr_layer_shell_v1_interface ;
 struct zxdg_output_v1* zxdg_output_manager_v1_get_xdg_output (void*,void*) ;
 TYPE_1__ zxdg_output_manager_v1_interface ;
 int zxdg_output_v1_add_listener (struct zxdg_output_v1*,int *,struct swaynag_output*) ;

__attribute__((used)) static void handle_global(void *data, struct wl_registry *registry,
  uint32_t name, const char *interface, uint32_t version) {
 struct swaynag *swaynag = data;
 if (strcmp(interface, wl_compositor_interface.name) == 0) {
  swaynag->compositor = wl_registry_bind(registry, name,
    &wl_compositor_interface, 4);
 } else if (strcmp(interface, wl_seat_interface.name) == 0) {
  swaynag->seat = wl_registry_bind(registry, name, &wl_seat_interface, 1);
  wl_seat_add_listener(swaynag->seat, &seat_listener, swaynag);
 } else if (strcmp(interface, wl_shm_interface.name) == 0) {
  swaynag->shm = wl_registry_bind(registry, name, &wl_shm_interface, 1);
 } else if (strcmp(interface, wl_output_interface.name) == 0) {
  if (!swaynag->output && swaynag->xdg_output_manager) {
   swaynag->querying_outputs++;
   struct swaynag_output *output =
    calloc(1, sizeof(struct swaynag_output));
   output->wl_output = wl_registry_bind(registry, name,
     &wl_output_interface, 3);
   output->wl_name = name;
   output->scale = 1;
   output->swaynag = swaynag;
   wl_list_insert(&swaynag->outputs, &output->link);
   wl_output_add_listener(output->wl_output,
     &output_listener, output);

   struct zxdg_output_v1 *xdg_output;
   xdg_output = zxdg_output_manager_v1_get_xdg_output(
     swaynag->xdg_output_manager, output->wl_output);
   zxdg_output_v1_add_listener(xdg_output,
     &xdg_output_listener, output);
  }
 } else if (strcmp(interface, zwlr_layer_shell_v1_interface.name) == 0) {
  swaynag->layer_shell = wl_registry_bind(
    registry, name, &zwlr_layer_shell_v1_interface, 1);
 } else if (strcmp(interface, zxdg_output_manager_v1_interface.name) == 0
   && version >= ZXDG_OUTPUT_V1_NAME_SINCE_VERSION) {
  swaynag->xdg_output_manager = wl_registry_bind(registry, name,
    &zxdg_output_manager_v1_interface,
    ZXDG_OUTPUT_V1_NAME_SINCE_VERSION);
 }
}
