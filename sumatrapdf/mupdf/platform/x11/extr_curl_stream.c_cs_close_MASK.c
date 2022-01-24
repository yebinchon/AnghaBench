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
struct curlstate {int kill_thread; struct curlstate* map; struct curlstate* buffer; int /*<<< orphan*/  easy; int /*<<< orphan*/  mutex; int /*<<< orphan*/  thread; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct curlstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct curlstate*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct curlstate*) ; 

__attribute__((used)) static void FUNC8(fz_context *ctx, void *state_)
{
	struct curlstate *state = state_;

	FUNC4(state);
	state->kill_thread = 1;
	FUNC7(state);

#ifdef _WIN32
	WaitForSingleObject(state->thread, INFINITE);
	CloseHandle(state->thread);
	CloseHandle(state->mutex);
#else
	FUNC5(state->thread, NULL);
	FUNC6(&state->mutex);
#endif

	FUNC2(state->easy);
	FUNC3(ctx, state->buffer);
	FUNC3(ctx, state->map);
	FUNC3(ctx, state);
}