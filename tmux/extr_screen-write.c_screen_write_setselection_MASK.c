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
typedef  int /*<<< orphan*/  u_char ;
struct tty_ctx {int /*<<< orphan*/  num; int /*<<< orphan*/ * ptr; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_setselection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC2(struct screen_write_ctx *ctx, u_char *str, u_int len)
{
	struct tty_ctx	ttyctx;

	FUNC0(ctx, &ttyctx);
	ttyctx.ptr = str;
	ttyctx.num = len;

	FUNC1(tty_cmd_setselection, &ttyctx);
}