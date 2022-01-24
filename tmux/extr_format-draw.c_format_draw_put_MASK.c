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
struct screen_write_ctx {int dummy; } ;
struct screen {int dummy; } ;
struct format_ranges {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct format_ranges*,struct screen*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct screen*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct screen_write_ctx *octx, u_int ocx, u_int ocy,
    struct screen *s, struct format_ranges *frs, u_int offset, u_int start,
    u_int width)
{
	/*
	 * The offset is how far from the cursor on the target screen; start
	 * and width how much to copy from the source screen.
	 */
	FUNC1(octx, ocx + offset, ocy, 0);
	FUNC2(octx, s, start, 0, width, 1);
	FUNC0(frs, s, offset, start, width);
}