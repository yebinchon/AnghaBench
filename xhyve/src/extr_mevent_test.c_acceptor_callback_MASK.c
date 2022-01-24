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
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int /*<<< orphan*/  accept_condvar ; 
 int /*<<< orphan*/  accept_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(int fd, enum ev_type type, void *param)
{
	FUNC1(&accept_mutex);
	FUNC0(&accept_condvar);
	FUNC2(&accept_mutex);
}