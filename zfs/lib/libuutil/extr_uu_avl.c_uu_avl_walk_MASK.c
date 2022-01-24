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
typedef  int (* uu_walk_fn_t ) (void*,void*) ;
typedef  int /*<<< orphan*/  uu_avl_walk_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_ERROR_CALLBACK_FAILED ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int UU_WALK_NEXT ; 
 int UU_WALK_REVERSE ; 
 int UU_WALK_ROBUST ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(uu_avl_t *ap, uu_walk_fn_t *func, void *private, uint32_t flags)
{
	void *e;
	uu_avl_walk_t my_walk;

	int status = UU_WALK_NEXT;

	if (flags & ~(UU_WALK_ROBUST | UU_WALK_REVERSE)) {
		FUNC4(UU_ERROR_UNKNOWN_FLAG);
		return (-1);
	}

	FUNC2(&my_walk, ap, flags);
	while (status == UU_WALK_NEXT &&
	    (e = FUNC0(&my_walk, ap)) != NULL)
		status = (*func)(e, private);
	FUNC1(&my_walk);

	if (status >= 0)
		return (0);
	FUNC4(UU_ERROR_CALLBACK_FAILED);
	return (-1);
}