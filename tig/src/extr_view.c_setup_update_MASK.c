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
struct view {int /*<<< orphan*/  start_time; int /*<<< orphan*/  io; int /*<<< orphan*/ * pipe; int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct view *view, const char *vid)
{
	FUNC0(view);
	/* XXX: Do not use string_copy_rev(), it copies until first space. */
	FUNC1(view->vid, vid, FUNC2(vid));
	view->pipe = &view->io;
	view->start_time = FUNC3(NULL);
}