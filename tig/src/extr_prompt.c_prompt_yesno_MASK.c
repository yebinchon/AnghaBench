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
struct input {int member_1; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,struct input*) ; 
 int /*<<< orphan*/  prompt_yesno_handler ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 

bool
FUNC2(const char *prompt)
{
	char prompt2[SIZEOF_STR];
	struct input input = { prompt_yesno_handler, false, NULL };

	if (!FUNC1(prompt2, "%s [Yy/Nn]", prompt))
		return false;

	return !!FUNC0(prompt2, &input);
}