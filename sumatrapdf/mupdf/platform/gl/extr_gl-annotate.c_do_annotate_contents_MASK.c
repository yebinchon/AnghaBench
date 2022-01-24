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
struct input {int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  pdf_annot ;

/* Variables and functions */
 scalar_t__ UI_INPUT_EDIT ; 
 int /*<<< orphan*/  ctx ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * selected_annot ; 
 scalar_t__ FUNC2 (struct input*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	static pdf_annot *last_annot = NULL;
	static struct input input;
	const char *contents;

	if (selected_annot != last_annot)
	{
		last_annot = selected_annot;
		contents = FUNC0(ctx, selected_annot);
		FUNC3(&input, contents);
	}

	FUNC4("Contents:");
	if (FUNC2(&input, 0, 5) >= UI_INPUT_EDIT)
		FUNC1(ctx, selected_annot, input.text);
}