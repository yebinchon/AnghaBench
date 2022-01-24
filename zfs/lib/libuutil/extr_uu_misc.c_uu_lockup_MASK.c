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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  uu_key_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  uu_panic_lock ; 

__attribute__((used)) static void
FUNC3(void)
{
	(void) FUNC0(&uu_panic_lock);
#if !defined(PTHREAD_ONCE_KEY_NP)
	(void) FUNC0(&uu_key_lock);
#endif
	FUNC1();
	FUNC2();
}