#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  unfocused; } ;
struct TYPE_4__ {TYPE_1__ border_colors; } ;

/* Variables and functions */
 TYPE_2__* config ; 
 struct cmd_results* FUNC0 (int,char**,int /*<<< orphan*/ *,char*) ; 

struct cmd_results *FUNC1(int argc, char **argv) {
	return FUNC0(argc, argv, &config->border_colors.unfocused, "client.unfocused");
}