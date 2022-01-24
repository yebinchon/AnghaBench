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
struct mevent {int me_state; int me_cq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mevent*,int /*<<< orphan*/ ) ; 
 int MEV_DEL_PENDING ; 
 int /*<<< orphan*/  change_head ; 
 int /*<<< orphan*/  me_list ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct mevent *evp, int newstate)
{
	/*
	 * It's not possible to enable/disable a deleted event
	 */
	if (evp->me_state == MEV_DEL_PENDING)
		return (EINVAL);

	/*
	 * No update needed if state isn't changing
	 */
	if (evp->me_state == newstate)
		return (0);
	
	FUNC3();

	evp->me_state = newstate;

	/*
	 * Place the entry onto the changed list if not already there.
	 */
	if (evp->me_cq == 0) {
		evp->me_cq = 1;
		FUNC1(evp, me_list);
		FUNC0(&change_head, evp, me_list);
		FUNC2();
	}

	FUNC4();

	return (0);
}