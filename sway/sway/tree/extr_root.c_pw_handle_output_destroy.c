
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct pid_workspace {TYPE_1__ output_destroy; int * output; } ;


 int output_destroy ;
 struct pid_workspace* pw ;
 struct pid_workspace* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void pw_handle_output_destroy(struct wl_listener *listener, void *data) {
 struct pid_workspace *pw = wl_container_of(listener, pw, output_destroy);
 pw->output = ((void*)0);
 wl_list_remove(&pw->output_destroy.link);
 wl_list_init(&pw->output_destroy.link);
}
