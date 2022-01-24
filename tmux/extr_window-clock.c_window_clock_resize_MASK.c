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
typedef  int /*<<< orphan*/  u_int ;
struct window_mode_entry {struct window_clock_mode_data* data; } ;
struct screen {int dummy; } ;
struct window_clock_mode_data {struct screen screen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*) ; 

__attribute__((used)) static void
FUNC2(struct window_mode_entry *wme, u_int sx, u_int sy)
{
	struct window_clock_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;

	FUNC0(s, sx, sy, 0);
	FUNC1(wme);
}