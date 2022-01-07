
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int backend; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 int create_output ;
 TYPE_1__ server ;
 int sway_assert (int ,char*) ;
 int wlr_backend_is_multi (int ) ;
 int wlr_multi_for_each_backend (int ,int ,int*) ;

struct cmd_results *cmd_create_output(int argc, char **argv) {
 sway_assert(wlr_backend_is_multi(server.backend),
   "Expected a multi backend");

 bool done = 0;
 wlr_multi_for_each_backend(server.backend, create_output, &done);

 if (!done) {
  return cmd_results_new(CMD_INVALID,
    "Can only create outputs for Wayland or X11 backends");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
