#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_6__ {TYPE_2__* current_bar; } ;
struct TYPE_4__ {char* urgent_workspace_border; char* urgent_workspace_bg; char* urgent_workspace_text; } ;
struct TYPE_5__ {TYPE_1__ colors; } ;

/* Variables and functions */
 TYPE_3__* config ; 
 struct cmd_results* FUNC0 (char***,char*,int,char**) ; 

struct cmd_results *FUNC1(int argc, char **argv) {
	char **colors[3] = {
		&(config->current_bar->colors.urgent_workspace_border),
		&(config->current_bar->colors.urgent_workspace_bg),
		&(config->current_bar->colors.urgent_workspace_text)
	};
	return FUNC0(colors, "urgent_workspace", argc, argv);
}