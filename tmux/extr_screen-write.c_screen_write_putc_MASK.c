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
typedef  int /*<<< orphan*/  u_char ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid_cell*,struct grid_cell const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct screen_write_ctx *ctx, const struct grid_cell *gcp,
    u_char ch)
{
	struct grid_cell	gc;

	FUNC0(&gc, gcp, sizeof gc);

	FUNC2(&gc.data, ch);
	FUNC1(ctx, &gc);
}