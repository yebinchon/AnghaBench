#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char* rp; unsigned char* wp; int /*<<< orphan*/  pos; TYPE_2__* state; } ;
typedef  TYPE_1__ fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {unsigned char* buffer; int eod; int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ fz_ahxd ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(fz_context *ctx, fz_stream *stm, size_t max)
{
	fz_ahxd *state = stm->state;
	unsigned char *p = state->buffer;
	unsigned char *ep;
	int a, b, c, odd;

	if (max > sizeof(state->buffer))
		max = sizeof(state->buffer);
	ep = p + max;

	odd = 0;

	while (p < ep)
	{
		if (state->eod)
			break;

		c = FUNC0(ctx, state->chain);
		if (c < 0)
			break;

		if (FUNC2(c))
		{
			if (!odd)
			{
				a = FUNC4(c);
				odd = 1;
			}
			else
			{
				b = FUNC4(c);
				*p++ = (a << 4) | b;
				odd = 0;
			}
		}
		else if (c == '>')
		{
			if (odd)
				*p++ = (a << 4);
			state->eod = 1;
			break;
		}
		else if (!FUNC3(c))
		{
			FUNC1(ctx, FZ_ERROR_GENERIC, "bad data in ahxd: '%c'", c);
		}
	}
	stm->rp = state->buffer;
	stm->wp = p;
	stm->pos += p - state->buffer;

	if (stm->rp != p)
		return *stm->rp++;
	return EOF;
}