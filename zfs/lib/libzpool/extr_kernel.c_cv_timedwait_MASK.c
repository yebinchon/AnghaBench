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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_3__ {int /*<<< orphan*/  m_owner; int /*<<< orphan*/  m_lock; } ;
typedef  TYPE_1__ kmutex_t ;
typedef  int /*<<< orphan*/  kcondvar_t ;
typedef  int clock_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int NANOSEC ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

clock_t
FUNC7(kcondvar_t *cv, kmutex_t *mp, clock_t abstime)
{
	int error;
	struct timeval tv;
	struct timespec ts;
	clock_t delta;

	delta = abstime - FUNC2();
	if (delta <= 0)
		return (-1);

	FUNC0(FUNC3(&tv, NULL) == 0);

	ts.tv_sec = tv.tv_sec + delta / hz;
	ts.tv_nsec = tv.tv_usec * NSEC_PER_USEC + (delta % hz) * (NANOSEC / hz);
	if (ts.tv_nsec >= NANOSEC) {
		ts.tv_sec++;
		ts.tv_nsec -= NANOSEC;
	}

	FUNC4(&mp->m_owner, 0, sizeof (pthread_t));
	error = FUNC5(cv, &mp->m_lock, &ts);
	mp->m_owner = FUNC6();

	if (error == ETIMEDOUT)
		return (-1);

	FUNC1(error);

	return (1);
}