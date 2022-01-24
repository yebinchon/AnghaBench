#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* text; void* background; void* border; } ;
struct TYPE_10__ {void* text; void* background; void* border; } ;
struct TYPE_9__ {void* text; void* background; void* border; } ;
struct TYPE_8__ {void* text; void* background; void* border; } ;
struct TYPE_7__ {void* text; void* background; void* border; } ;
struct TYPE_12__ {TYPE_5__ binding_mode; TYPE_4__ urgent_workspace; TYPE_3__ inactive_workspace; TYPE_2__ active_workspace; TYPE_1__ focused_workspace; void* focused_separator; void* focused_statusline; void* focused_background; void* separator; void* statusline; void* background; } ;
struct swaybar_config {TYPE_6__ colors; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
		struct swaybar_config *config, json_object *colors) {
	json_object *background, *statusline, *separator;
	json_object *focused_background, *focused_statusline, *focused_separator;
	json_object *focused_workspace_border, *focused_workspace_bg, *focused_workspace_text;
	json_object *inactive_workspace_border, *inactive_workspace_bg, *inactive_workspace_text;
	json_object *active_workspace_border, *active_workspace_bg, *active_workspace_text;
	json_object *urgent_workspace_border, *urgent_workspace_bg, *urgent_workspace_text;
	json_object *binding_mode_border, *binding_mode_bg, *binding_mode_text;
	FUNC1(colors, "background", &background);
	FUNC1(colors, "statusline", &statusline);
	FUNC1(colors, "separator", &separator);
	FUNC1(colors, "focused_background", &focused_background);
	FUNC1(colors, "focused_statusline", &focused_statusline);
	FUNC1(colors, "focused_separator", &focused_separator);
	FUNC1(colors, "focused_workspace_border", &focused_workspace_border);
	FUNC1(colors, "focused_workspace_bg", &focused_workspace_bg);
	FUNC1(colors, "focused_workspace_text", &focused_workspace_text);
	FUNC1(colors, "active_workspace_border", &active_workspace_border);
	FUNC1(colors, "active_workspace_bg", &active_workspace_bg);
	FUNC1(colors, "active_workspace_text", &active_workspace_text);
	FUNC1(colors, "inactive_workspace_border", &inactive_workspace_border);
	FUNC1(colors, "inactive_workspace_bg", &inactive_workspace_bg);
	FUNC1(colors, "inactive_workspace_text", &inactive_workspace_text);
	FUNC1(colors, "urgent_workspace_border", &urgent_workspace_border);
	FUNC1(colors, "urgent_workspace_bg", &urgent_workspace_bg);
	FUNC1(colors, "urgent_workspace_text", &urgent_workspace_text);
	FUNC1(colors, "binding_mode_border", &binding_mode_border);
	FUNC1(colors, "binding_mode_bg", &binding_mode_bg);
	FUNC1(colors, "binding_mode_text", &binding_mode_text);
	if (background) {
		config->colors.background = FUNC2(
				FUNC0(background));
	}
	if (statusline) {
		config->colors.statusline = FUNC2(
				FUNC0(statusline));
	}
	if (separator) {
		config->colors.separator = FUNC2(
				FUNC0(separator));
	}
	if (focused_background) {
		config->colors.focused_background = FUNC2(
				FUNC0(focused_background));
	}
	if (focused_statusline) {
		config->colors.focused_statusline = FUNC2(
				FUNC0(focused_statusline));
	}
	if (focused_separator) {
		config->colors.focused_separator = FUNC2(
				FUNC0(focused_separator));
	}
	if (focused_workspace_border) {
		config->colors.focused_workspace.border = FUNC2(
				FUNC0(focused_workspace_border));
	}
	if (focused_workspace_bg) {
		config->colors.focused_workspace.background = FUNC2(
				FUNC0(focused_workspace_bg));
	}
	if (focused_workspace_text) {
		config->colors.focused_workspace.text = FUNC2(
				FUNC0(focused_workspace_text));
	}
	if (active_workspace_border) {
		config->colors.active_workspace.border = FUNC2(
				FUNC0(active_workspace_border));
	}
	if (active_workspace_bg) {
		config->colors.active_workspace.background = FUNC2(
				FUNC0(active_workspace_bg));
	}
	if (active_workspace_text) {
		config->colors.active_workspace.text = FUNC2(
				FUNC0(active_workspace_text));
	}
	if (inactive_workspace_border) {
		config->colors.inactive_workspace.border = FUNC2(
				FUNC0(inactive_workspace_border));
	}
	if (inactive_workspace_bg) {
		config->colors.inactive_workspace.background = FUNC2(
				FUNC0(inactive_workspace_bg));
	}
	if (inactive_workspace_text) {
		config->colors.inactive_workspace.text = FUNC2(
				FUNC0(inactive_workspace_text));
	}
	if (urgent_workspace_border) {
		config->colors.urgent_workspace.border = FUNC2(
				FUNC0(urgent_workspace_border));
	}
	if (urgent_workspace_bg) {
		config->colors.urgent_workspace.background = FUNC2(
				FUNC0(urgent_workspace_bg));
	}
	if (urgent_workspace_text) {
		config->colors.urgent_workspace.text = FUNC2(
				FUNC0(urgent_workspace_text));
	}
	if (binding_mode_border) {
		config->colors.binding_mode.border = FUNC2(
				FUNC0(binding_mode_border));
	}
	if (binding_mode_bg) {
		config->colors.binding_mode.background = FUNC2(
				FUNC0(binding_mode_bg));
	}
	if (binding_mode_text) {
		config->colors.binding_mode.text = FUNC2(
				FUNC0(binding_mode_text));
	}
}