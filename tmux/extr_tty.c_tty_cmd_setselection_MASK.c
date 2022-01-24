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
struct tty_ctx {int num; int /*<<< orphan*/  ptr; } ;
struct tty {int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (size_t) ; 

void
FUNC5(struct tty *tty, const struct tty_ctx *ctx)
{
	char	*buf;
	size_t	 off;

	if (!FUNC3(tty->term, TTYC_MS))
		return;

	off = 4 * ((ctx->num + 2) / 3) + 1; /* storage for base64 */
	buf = FUNC4(off);

	FUNC0(ctx->ptr, ctx->num, buf, off);
	FUNC2(tty, TTYC_MS, "", buf);

	FUNC1(buf);
}