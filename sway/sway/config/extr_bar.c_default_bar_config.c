
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * binding_mode_text; int * binding_mode_bg; int * binding_mode_border; int * focused_separator; int * focused_statusline; int * focused_background; void* urgent_workspace_text; void* urgent_workspace_bg; void* urgent_workspace_border; void* inactive_workspace_text; void* inactive_workspace_bg; void* inactive_workspace_border; void* active_workspace_text; void* active_workspace_bg; void* active_workspace_border; void* focused_workspace_text; void* focused_workspace_bg; void* focused_workspace_border; void* separator; void* statusline; void* background; } ;
struct bar_config {int pango_markup; int workspace_buttons; int wrap_scroll; int strip_workspace_numbers; int strip_workspace_name; int binding_mode_indicator; int verbose; int status_padding; int status_edge_padding; int tray_padding; int tray_bindings; TYPE_1__ colors; int bindings; void* hidden_state; void* mode; int modifier; int * separator_symbol; scalar_t__ height; int * font; int * swaybar_command; void* position; int * outputs; } ;


 struct bar_config* calloc (int,int) ;
 int create_list () ;
 int free_bar_config (struct bar_config*) ;
 int get_modifier_mask_by_name (char*) ;
 void* strdup (char*) ;
 void* strndup (char*,int) ;
 int wl_list_init (int *) ;

struct bar_config *default_bar_config(void) {
 struct bar_config *bar = ((void*)0);
 bar = calloc(1, sizeof(struct bar_config));
 if (!bar) {
  return ((void*)0);
 }
 bar->outputs = ((void*)0);
 bar->position = strdup("bottom");
 bar->pango_markup = 0;
 bar->swaybar_command = ((void*)0);
 bar->font = ((void*)0);
 bar->height = 0;
 bar->workspace_buttons = 1;
 bar->wrap_scroll = 0;
 bar->separator_symbol = ((void*)0);
 bar->strip_workspace_numbers = 0;
 bar->strip_workspace_name = 0;
 bar->binding_mode_indicator = 1;
 bar->verbose = 0;
 bar->modifier = get_modifier_mask_by_name("Mod4");
 bar->status_padding = 1;
 bar->status_edge_padding = 3;
 if (!(bar->mode = strdup("dock"))) {
        goto cleanup;
 }
 if (!(bar->hidden_state = strdup("hide"))) {
  goto cleanup;
 }
 if (!(bar->bindings = create_list())) {
  goto cleanup;
 }

 if (!(bar->colors.background = strndup("#000000ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.statusline = strndup("#ffffffff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.separator = strndup("#666666ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.focused_workspace_border = strndup("#4c7899ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.focused_workspace_bg = strndup("#285577ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.focused_workspace_text = strndup("#ffffffff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.active_workspace_border = strndup("#333333ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.active_workspace_bg = strndup("#5f676aff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.active_workspace_text = strndup("#ffffffff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.inactive_workspace_border = strndup("#333333ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.inactive_workspace_bg = strndup("#222222ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.inactive_workspace_text = strndup("#888888ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.urgent_workspace_border = strndup("#2f343aff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.urgent_workspace_bg = strndup("#900000ff", 9))) {
  goto cleanup;
 }
 if (!(bar->colors.urgent_workspace_text = strndup("#ffffffff", 9))) {
  goto cleanup;
 }


 bar->colors.focused_background = ((void*)0);
 bar->colors.focused_statusline = ((void*)0);
 bar->colors.focused_separator = ((void*)0);
 bar->colors.binding_mode_border = ((void*)0);
 bar->colors.binding_mode_bg = ((void*)0);
 bar->colors.binding_mode_text = ((void*)0);






 return bar;
cleanup:
 free_bar_config(bar);
 return ((void*)0);
}
