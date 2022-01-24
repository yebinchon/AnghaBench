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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2()
{
#ifdef HAVE_CHECK_STACK_GROWTH
    int			i;

    check_stack_growth((char *)&i);

# ifdef HAVE_STACK_LIMIT
    get_stack_limit();
# endif

#endif

}