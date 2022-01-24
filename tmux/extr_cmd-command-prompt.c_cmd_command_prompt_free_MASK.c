#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmd_command_prompt_cdata {struct cmd_command_prompt_cdata* template; struct cmd_command_prompt_cdata* prompts; struct cmd_command_prompt_cdata* inputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd_command_prompt_cdata*) ; 

__attribute__((used)) static void
FUNC1(void *data)
{
	struct cmd_command_prompt_cdata	*cdata = data;

	FUNC0(cdata->inputs);
	FUNC0(cdata->prompts);
	FUNC0(cdata->template);
	FUNC0(cdata);
}