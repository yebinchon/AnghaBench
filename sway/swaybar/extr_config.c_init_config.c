
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int border; int background; int text; } ;
struct TYPE_12__ {int border; int background; int text; } ;
struct TYPE_11__ {int border; int background; int text; } ;
struct TYPE_10__ {int border; int background; int text; } ;
struct TYPE_9__ {int border; int background; int text; } ;
struct TYPE_14__ {int background; int focused_background; int statusline; int focused_statusline; int separator; TYPE_6__ binding_mode; TYPE_5__ urgent_workspace; TYPE_4__ inactive_workspace; TYPE_3__ active_workspace; TYPE_2__ focused_workspace; } ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ bottom; scalar_t__ right; scalar_t__ top; } ;
struct swaybar_config {int pango_markup; int strip_workspace_numbers; int strip_workspace_name; int binding_mode_indicator; int wrap_scroll; int workspace_buttons; int status_padding; int status_edge_padding; int tray_padding; int tray_bindings; TYPE_7__ colors; TYPE_1__ gaps; scalar_t__ height; int outputs; int bindings; int * sep_symbol; void* hidden_state; void* mode; void* font; int position; int * status_command; } ;


 struct swaybar_config* calloc (int,int) ;
 int create_list () ;
 int parse_position (char*) ;
 void* strdup (char*) ;
 int wl_list_init (int *) ;

struct swaybar_config *init_config(void) {
 struct swaybar_config *config = calloc(1, sizeof(struct swaybar_config));
 config->status_command = ((void*)0);
 config->pango_markup = 0;
 config->position = parse_position("bottom");
 config->font = strdup("monospace 10");
 config->mode = strdup("dock");
 config->hidden_state = strdup("hide");
 config->sep_symbol = ((void*)0);
 config->strip_workspace_numbers = 0;
 config->strip_workspace_name = 0;
 config->binding_mode_indicator = 1;
 config->wrap_scroll = 0;
 config->workspace_buttons = 1;
 config->bindings = create_list();
 wl_list_init(&config->outputs);
 config->status_padding = 1;
 config->status_edge_padding = 3;


 config->height = 0;


 config->gaps.top = 0;
 config->gaps.right = 0;
 config->gaps.bottom = 0;
 config->gaps.left = 0;


 config->colors.background = 0x000000FF;
 config->colors.focused_background = 0x000000FF;
 config->colors.statusline = 0xFFFFFFFF;
 config->colors.focused_statusline = 0xFFFFFFFF;
 config->colors.separator = 0x666666FF;

 config->colors.focused_workspace.border = 0x4C7899FF;
 config->colors.focused_workspace.background = 0x285577FF;
 config->colors.focused_workspace.text = 0xFFFFFFFF;

 config->colors.active_workspace.border = 0x333333FF;
 config->colors.active_workspace.background = 0x5F676AFF;
 config->colors.active_workspace.text = 0xFFFFFFFF;

 config->colors.inactive_workspace.border = 0x333333FF;
 config->colors.inactive_workspace.background = 0x222222FF;
 config->colors.inactive_workspace.text = 0x888888FF;

 config->colors.urgent_workspace.border = 0x2F343AFF;
 config->colors.urgent_workspace.background = 0x900000FF;
 config->colors.urgent_workspace.text = 0xFFFFFFFF;

 config->colors.binding_mode.border = 0x2F343AFF;
 config->colors.binding_mode.background = 0x900000FF;
 config->colors.binding_mode.text = 0xFFFFFFFF;






 return config;
}
