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
struct tty_ctx {int /*<<< orphan*/  num; int /*<<< orphan*/  ptr; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 

void
FUNC2(struct tty *tty, const struct tty_ctx *ctx)
{
	FUNC0(tty, ctx->ptr, ctx->num);
	FUNC1(tty);
}