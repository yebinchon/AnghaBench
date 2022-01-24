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
typedef  scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; int /*<<< orphan*/  backing; int /*<<< orphan*/  lineflag; int /*<<< orphan*/  cursordrag; int /*<<< orphan*/  screen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSORDRAG_NONE ; 
 int /*<<< orphan*/  LINE_SEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme)
{
	struct window_copy_mode_data   *data = wme->data;
	u_int				px, py;

	FUNC0(&data->screen);

	data->cursordrag = CURSORDRAG_NONE;
	data->lineflag = LINE_SEL_NONE;

	py = FUNC1(data->backing) + data->cy - data->oy;
	px = FUNC2(wme, py);
	if (data->cx > px)
		FUNC3(wme, px, data->cy);
}