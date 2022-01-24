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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/ * rp; int /*<<< orphan*/  pos; int /*<<< orphan*/ * wp; TYPE_2__* state; } ;
typedef  TYPE_1__ fz_stream ;
struct TYPE_5__ {int run; int w; int n; int c; int /*<<< orphan*/ * temp; int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ fz_sgilog16 ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(fz_context *ctx, fz_stream *stm, size_t max)
{
	fz_sgilog16 *state = stm->state;
	uint16_t *p;
	uint16_t *ep;
	uint8_t *q;
	int shift;

	(void)max;

	if (state->run < 0)
		return EOF;

	FUNC2(state->temp, 0, state->w * sizeof(uint16_t));

	for (shift = 8; shift >= 0; shift -= 8)
	{
		p = state->temp;
		ep = p + state->w;
		while (p < ep)
		{
			if (state->n == 0)
			{
				state->run = FUNC0(ctx, state->chain);
				if (state->run < 0)
				{
					state->run = -1;
					FUNC1(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
				}
				if (state->run < 128)
					state->n = state->run;
				else
				{
					state->n = state->run - 126;
					state->c = FUNC0(ctx, state->chain);
					if (state->c < 0)
					{
						state->run = -1;
						FUNC1(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
					}
				}
			}

			if (state->run < 128)
			{
				while (p < ep && state->n)
				{
					int c = FUNC0(ctx, state->chain);
					if (c < 0)
					{
						state->run = -1;
						FUNC1(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
					}
					*p++ |= c<<shift;
					state->n--;
				}
			}
			else
			{
				while (p < ep && state->n)
				{
					*p++ |= state->c<<shift;
					state->n--;
				}
			}
		}
	}

	p = state->temp;
	q = (uint8_t *)p;
	ep = p + state->w;
	while (p < ep)
	{
		*q++ = FUNC3(ctx, *p++);
	}

	stm->rp = (uint8_t *)(state->temp);
	stm->wp = q;
	stm->pos += q - stm->rp;

	if (q == stm->rp)
		return EOF;

	return *stm->rp++;
}