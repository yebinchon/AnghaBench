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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rb_cMarkdown ; 
 int /*<<< orphan*/  rb_cObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rb_mRedcarpet ; 
 int /*<<< orphan*/  rb_redcarpet_md__new ; 
 int /*<<< orphan*/  rb_redcarpet_md_render ; 

__attribute__((visibility("default")))
void FUNC5()
{
	rb_mRedcarpet = FUNC3("Redcarpet");

	rb_cMarkdown = FUNC1(rb_mRedcarpet, "Markdown", rb_cObject);
	FUNC4(rb_cMarkdown, "new", rb_redcarpet_md__new, -1);
	FUNC2(rb_cMarkdown, "render", rb_redcarpet_md_render, 1);

	FUNC0();
}