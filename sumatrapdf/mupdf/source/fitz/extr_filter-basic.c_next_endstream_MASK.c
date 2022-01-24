#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct endstream_filter {size_t remain; size_t offset; unsigned char* buffer; size_t extras; int size; int warned; TYPE_3__* chain; } ;
struct TYPE_5__ {unsigned char* rp; unsigned char* wp; size_t pos; int eof; struct endstream_filter* state; } ;
typedef  TYPE_1__ fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int /*<<< orphan*/  rp; } ;

/* Variables and functions */
 int EOF ; 
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 unsigned char* FUNC1 (unsigned char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC6(fz_context *ctx, fz_stream *stm, size_t max)
{
	struct endstream_filter *state = stm->state;
	size_t n, nbytes_in_buffer, size;
	unsigned char *rp;

	if (state->remain == 0)
		goto look_for_endstream;

	FUNC2(ctx, state->chain, state->offset, 0);
	n = FUNC0(ctx, state->chain, max);
	if (n == 0)
		return EOF;
	if (n > state->remain)
		n = state->remain;
	if (n > sizeof(state->buffer))
		n = sizeof(state->buffer);
	FUNC4(state->buffer, state->chain->rp, n);
	stm->rp = state->buffer;
	stm->wp = stm->rp + n;
	state->chain->rp += n;
	state->remain -= n;
	state->offset += n;
	stm->pos += n;
	return *stm->rp++;

look_for_endstream:
	/* We should distrust the stream length, and check for end
	 * marker before terminating the stream - this is to cope
	 * with files with duff "Length" values. */

	/* Move any data left over in our buffer down to the start.
	 * Ordinarily, there won't be any, but this allows for the
	 * case where we were part way through matching a stream end
	 * marker when the buffer filled before. */
	nbytes_in_buffer = state->extras;
	if (nbytes_in_buffer)
		FUNC5(state->buffer, stm->rp, nbytes_in_buffer);
	stm->rp = state->buffer;
	stm->wp = stm->rp + nbytes_in_buffer;

	/* In most sane files, we'll get "\nendstream" instantly. We
	 * should only need (say) 32 bytes to be sure. For crap files
	 * where we overread regularly, don't harm performance by
	 * working in small chunks. */
	size = state->size * 2;
	if (size > sizeof(state->buffer))
		size = sizeof(state->buffer);
	state->size = size;

	/* Read enough data into our buffer to start looking for the 'endstream' token. */
	FUNC2(ctx, state->chain, state->offset, 0);
	while (nbytes_in_buffer < size)
	{
		n = FUNC0(ctx, state->chain, size - nbytes_in_buffer);
		if (n == 0)
			break;
		if (n > size - nbytes_in_buffer)
			n = size - nbytes_in_buffer;
		FUNC4(stm->wp, state->chain->rp, n);
		stm->wp += n;
		state->chain->rp += n;
		nbytes_in_buffer += n;
		state->offset += n;
	}

	/* Look for the 'endstream' token. */
	rp = FUNC1(state->buffer, nbytes_in_buffer, "endstream", 9);
	if (rp)
	{
		/* Include newline (CR|LF|CRLF) before 'endstream' token */
		if (rp > state->buffer && rp[-1] == '\n') --rp;
		if (rp > state->buffer && rp[-1] == '\r') --rp;
		n = rp - state->buffer;
		stm->eof = 1; /* We're done, don't call us again! */
	}
	else if (nbytes_in_buffer > 11) /* 11 covers enough data to detect "\r?\n?endstream" */
		n = nbytes_in_buffer - 11; /* no endstream, but there is more data */
	else
		n = nbytes_in_buffer; /* no endstream, but at the end of the file */

	/* We have at least n bytes before we hit an end marker */
	state->extras = nbytes_in_buffer - n;
	stm->wp = stm->rp + n;
	stm->pos += n;

	if (n == 0)
		return EOF;

	if (!state->warned)
	{
		state->warned = 1;
		FUNC3(ctx, "PDF stream Length incorrect");
	}
	return *stm->rp++;
}