
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; TYPE_1__* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; } ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 scalar_t__ FULLSCREEN_GLOBAL ;
 int arrange_root () ;
 int arrange_workspace (struct sway_workspace*) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 int container_flatten (scalar_t__) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int container_split (struct sway_container*,int) ;
 TYPE_3__* root ;
 int workspace_split (struct sway_workspace*,int) ;

__attribute__((used)) static struct cmd_results *do_split(int layout) {
 struct sway_container *con = config->handler_context.container;
 struct sway_workspace *ws = config->handler_context.workspace;
 if (con) {
  if (container_is_scratchpad_hidden(con) &&
    con->fullscreen_mode != FULLSCREEN_GLOBAL) {
   return cmd_results_new(CMD_FAILURE,
     "Cannot split a hidden scratchpad container");
  }
  container_split(con, layout);
 } else {
  workspace_split(ws, layout);
 }

 if (con && con->parent && con->parent->parent) {
  container_flatten(con->parent->parent);
 }

 if (root->fullscreen_global) {
  arrange_root();
 } else {
  arrange_workspace(ws);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
