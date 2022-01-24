#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int screen_num; int /*<<< orphan*/ * display; int /*<<< orphan*/ * saved_ramps; } ;
typedef  TYPE_1__ vidmode_state_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(vidmode_state_t **state)
{
	*state = FUNC3(sizeof(vidmode_state_t));
	if (*state == NULL) return -1;

	vidmode_state_t *s = *state;
	s->screen_num = -1;
	s->saved_ramps = NULL;

	/* Open display */
	s->display = FUNC0(NULL);
	if (s->display == NULL) {
		FUNC2(stderr, FUNC1("X request failed: %s\n"), "XOpenDisplay");
		return -1;
	}

	return 0;
}