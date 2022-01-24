#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int crtc_num_count; int* crtc_num; int /*<<< orphan*/  screen_num; } ;
typedef  TYPE_1__ randr_state_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int* FUNC2 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(randr_state_t *state, const char *key, const char *value)
{
	if (FUNC4(key, "screen") == 0) {
		state->screen_num = FUNC1(value);
	} else if (FUNC4(key, "crtc") == 0) {
		char *tail;

		/* Check how many crtcs are configured */
		const char *local_value = value;
		while (1) {
			errno = 0;
			int parsed = FUNC5(local_value, &tail, 0);
			if (parsed == 0 && (errno != 0 ||
					    tail == local_value)) {
				FUNC3(stderr, FUNC0("Unable to read screen"
						  " number: `%s'.\n"), value);
				return -1;
			} else {
				state->crtc_num_count += 1;
			}
			local_value = tail;

			if (*local_value == ',') {
				local_value += 1;
			} else if (*local_value == '\0') {
				break;
			}
		}

		/* Configure all given crtcs */
		state->crtc_num = FUNC2(state->crtc_num_count, sizeof(int));
		local_value = value;
		for (int i = 0; i < state->crtc_num_count; i++) {
			errno = 0;
			int parsed = FUNC5(local_value, &tail, 0);
			if (parsed == 0 && (errno != 0 ||
					    tail == local_value)) {
				return -1;
			} else {
				state->crtc_num[i] = parsed;
			}
			local_value = tail;

			if (*local_value == ',') {
				local_value += 1;
			} else if (*local_value == '\0') {
				break;
			}
		}
	} else if (FUNC4(key, "preserve") == 0) {
		FUNC3(stderr, FUNC0("Parameter `%s` is now always on; "
				  " Use the `%s` command-line option"
				  " to disable.\n"),
			key, "-P");
	} else {
		FUNC3(stderr, FUNC0("Unknown method parameter: `%s'.\n"), key);
		return -1;
	}

	return 0;
}