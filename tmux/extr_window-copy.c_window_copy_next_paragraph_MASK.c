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
struct screen {int dummy; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; int /*<<< orphan*/  backing; struct screen screen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 scalar_t__ FUNC2 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	u_int				 maxy, ox, oy;

	oy = FUNC0(data->backing) + data->cy - data->oy;
	maxy = FUNC0(data->backing) + FUNC1(s) - 1;

	while (oy < maxy && FUNC2(wme, oy) == 0)
		oy++;

	while (oy < maxy && FUNC2(wme, oy) > 0)
		oy++;

	ox = FUNC2(wme, oy);
	FUNC3(wme, ox, oy);
}