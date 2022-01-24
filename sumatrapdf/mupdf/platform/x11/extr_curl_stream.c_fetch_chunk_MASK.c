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
struct curlstate {int kill_thread; int next_fill_start; int complete; size_t content_length; size_t map_length; unsigned char* map; size_t current_fill_start; size_t current_fill_end; int /*<<< orphan*/  easy; scalar_t__ accept_ranges; scalar_t__ head; scalar_t__ curl_error; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int BLOCK_SHIFT ; 
 int BLOCK_SIZE ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_NOBODY ; 
 int /*<<< orphan*/  CURLOPT_RANGE ; 
 int /*<<< orphan*/  CURLOPT_WRITEHEADER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct curlstate*) ; 
 int /*<<< orphan*/  FUNC7 (struct curlstate*) ; 

__attribute__((used)) static void FUNC8(struct curlstate *state)
{
	char text[32];
	size_t block, start, end;
	CURLcode ret;

	ret = FUNC3(state->easy);
	if (ret != CURLE_OK) {
		/* If we get an error, store it, and kill the thread.
		 * The next fetch will return it. */
		FUNC6(state);
		state->curl_error = ret;
		state->kill_thread = 1;
		FUNC7(state);
		return;
	}

	/* We finished the header, now request the body. */
	FUNC6(state);
	if (state->head)
	{
		state->head = 0;
		FUNC4(state->easy, CURLOPT_NOBODY, 0);
		FUNC4(state->easy, CURLOPT_HEADERFUNCTION, NULL);
		FUNC4(state->easy, CURLOPT_WRITEHEADER, NULL);
		if (state->accept_ranges)
		{
			FUNC5(text, 32, "%d-%d", 0, BLOCK_SIZE-1);
			FUNC4(state->easy, CURLOPT_RANGE, text);
			state->next_fill_start = BLOCK_SIZE;
		}
		FUNC7(state);
		return;
	}

	/* We finished the current body. If not accepting ranges, that's the end. */
	if (!state->accept_ranges)
	{
		FUNC0(("we got it all, in one request.\n"));
		state->complete = 1;
		state->kill_thread = 1;
		FUNC7(state);
		return;
	}

	/* Find the next block to fetch */
	FUNC2((state->next_fill_start & (BLOCK_SHIFT-1)) == 0);
	block = state->next_fill_start>>BLOCK_SHIFT;
	if (state->content_length > 0)
	{
		/* Find the next block that we haven't got */
		size_t map_length = state->map_length;
		unsigned char *map = state->map;
		while (block < map_length && FUNC1(map, block))
			++block;
		if (block == map_length)
		{
			block = 0;
			while (block < map_length && FUNC1(map, block))
				++block;
			if (block == map_length)
			{
				/* We've got it all! */
				FUNC0(("we got it all block=%d map_length=%d!\n", block, map_length));
				state->complete = 1;
				state->kill_thread = 1;
				FUNC7(state);
				return;
			}
		}
	}
	else
	{
		state->complete = 1;
		state->kill_thread = 1;
		FUNC7(state);
		return;
	}

	FUNC0(("block requested was %d, fetching %d\n", state->next_fill_start>>BLOCK_SHIFT, block));

	/* Set up fetch of that block */
	start = block<<BLOCK_SHIFT;
	end = start + BLOCK_SIZE-1;
	state->current_fill_start = start;
	if (state->content_length > 0 && end >= state->content_length)
		end = state->content_length-1;
	state->current_fill_end = end;
	FUNC5(text, 32, "%d-%d", start, end);

	/* Unless anyone changes this in the meantime, the
	 * next block we fetch will follow on from this one. */
	state->next_fill_start = state->current_fill_start+BLOCK_SIZE;
	FUNC7(state);

	/* Request next range! */
	FUNC0(("requesting range %s\n", text));
	FUNC4(state->easy, CURLOPT_RANGE, text);
}