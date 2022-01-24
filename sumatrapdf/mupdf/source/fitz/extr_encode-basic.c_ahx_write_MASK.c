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
struct ahx {int column; int /*<<< orphan*/  chain; } ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  size_t c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static void FUNC1(fz_context *ctx, void *opaque, const void *data, size_t n)
{
	static const char tohex[16] = "0123456789ABCDEF";
	struct ahx *state = opaque;
	const unsigned char *p = data;
	while (n-- > 0)
	{
		int c = *p++;
		FUNC0(ctx, state->chain, tohex[(c>>4) & 15]);
		FUNC0(ctx, state->chain, tohex[(c) & 15]);
		state->column += 2;
		if (state->column == 64)
		{
			FUNC0(ctx, state->chain, '\n');
			state->column = 0;
		}
	}
}