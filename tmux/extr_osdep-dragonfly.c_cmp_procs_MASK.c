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
struct kinfo_proc {scalar_t__ kp_pid; int /*<<< orphan*/  kp_comm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kinfo_proc*) ; 
 scalar_t__ FUNC1 (struct kinfo_proc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct kinfo_proc *
FUNC3(struct kinfo_proc *p1, struct kinfo_proc *p2)
{
	if (FUNC0(p1) && !FUNC0(p2))
		return (p1);
	if (!FUNC0(p1) && FUNC0(p2))
		return (p2);

	if (FUNC1(p1) && !FUNC1(p2))
		return (p1);
	if (!FUNC1(p1) && FUNC1(p2))
		return (p2);

	if (FUNC2(p1->kp_comm, p2->kp_comm) < 0)
		return (p1);
	if (FUNC2(p1->kp_comm, p2->kp_comm) > 0)
		return (p2);

	if (p1->kp_pid > p2->kp_pid)
		return (p1);
	return (p2);
}