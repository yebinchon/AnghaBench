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
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,struct screen_write_ctx*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme, u_int py, u_int ny)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen_write_ctx	 	 ctx;
	u_int				 i;

	FUNC1(&ctx, wp, NULL);
	for (i = py; i < py + ny; i++)
		FUNC3(wme, &ctx, i);
	FUNC0(&ctx, data->cx, data->cy, 0);
	FUNC2(&ctx);
}