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
struct key_visitor_state {void* member_1; int member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  key_visitor_fn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  foreach_key_request ; 
 int /*<<< orphan*/  FUNC1 (struct key_visitor_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct key_visitor_state*) ; 
 int /*<<< orphan*/ * keymaps ; 

bool
FUNC3(key_visitor_fn visitor, void *data, bool combine_keys)
{
	int i;

	for (i = 0; i < FUNC0(keymaps); i++) {
		struct key_visitor_state state = { visitor, data, &keymaps[i], combine_keys };

		if (!FUNC2(foreach_key_request, &state)
		    || !FUNC1(&state, true, true)
		    || !FUNC1(&state, true, false)
		    || !FUNC1(&state, false, false))
			return false;
	}

	return true;
}