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
struct vcpu {int state; int /*<<< orphan*/  state_sleep_cnd; int /*<<< orphan*/  state_sleep_mtx; } ;
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  VCPU_FROZEN 131 
#define  VCPU_IDLE 130 
#define  VCPU_RUNNING 129 
#define  VCPU_SLEEPING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu*) ; 

__attribute__((used)) static int
FUNC7(struct vcpu *vcpu, enum vcpu_state newstate,
    bool from_idle)
{
	int error;
	const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0}; /* 1 second */

	/*
	 * State transitions from the vmmdev_ioctl() must always begin from
	 * the VCPU_IDLE state. This guarantees that there is only a single
	 * ioctl() operating on a vcpu at any point.
	 */
	if (from_idle) {
		while (vcpu->state != VCPU_IDLE) {
			FUNC3(&vcpu->state_sleep_mtx);
			FUNC6(vcpu);
			FUNC2(&vcpu->state_sleep_cnd,
				&vcpu->state_sleep_mtx, &ts);
			FUNC5(vcpu);
			FUNC4(&vcpu->state_sleep_mtx);
			//msleep_spin(&vcpu->state, &vcpu->mtx, "vmstat", hz);
		}
	} else {
		FUNC0(vcpu->state != VCPU_IDLE, ("invalid transition from "
		    "vcpu idle state"));
	}

	/*
	 * The following state transitions are allowed:
	 * IDLE -> FROZEN -> IDLE
	 * FROZEN -> RUNNING -> FROZEN
	 * FROZEN -> SLEEPING -> FROZEN
	 */
	switch (vcpu->state) {
	case VCPU_IDLE:
	case VCPU_RUNNING:
	case VCPU_SLEEPING:
		error = (newstate != VCPU_FROZEN);
		break;
	case VCPU_FROZEN:
		error = (newstate == VCPU_FROZEN);
		break;
	}

	if (error)
		return (EBUSY);

	vcpu->state = newstate;

	if (newstate == VCPU_IDLE)
		FUNC1(&vcpu->state_sleep_cnd);
		//wakeup(&vcpu->state);

	return (0);
}