
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_output_configuration_v1 {int dummy; } ;
struct wl_listener {int dummy; } ;


 int wlr_output_configuration_v1_destroy (struct wlr_output_configuration_v1*) ;
 int wlr_output_configuration_v1_send_succeeded (struct wlr_output_configuration_v1*) ;

void handle_output_manager_test(struct wl_listener *listener, void *data) {
 struct wlr_output_configuration_v1 *config = data;


 wlr_output_configuration_v1_send_succeeded(config);
 wlr_output_configuration_v1_destroy(config);
}
