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
struct criteria {struct criteria* raw; struct criteria* cmdlist; struct criteria* workspace; int /*<<< orphan*/  con_mark; int /*<<< orphan*/  window_role; int /*<<< orphan*/  instance; int /*<<< orphan*/  class; int /*<<< orphan*/  app_id; int /*<<< orphan*/  shell; int /*<<< orphan*/  title; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct criteria*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct criteria *criteria) {
	FUNC1(criteria->title);
	FUNC1(criteria->shell);
	FUNC1(criteria->app_id);
#if HAVE_XWAYLAND
	pattern_destroy(criteria->class);
	pattern_destroy(criteria->instance);
	pattern_destroy(criteria->window_role);
#endif
	FUNC1(criteria->con_mark);
	FUNC0(criteria->workspace);
	FUNC0(criteria->cmdlist);
	FUNC0(criteria->raw);
	FUNC0(criteria);
}