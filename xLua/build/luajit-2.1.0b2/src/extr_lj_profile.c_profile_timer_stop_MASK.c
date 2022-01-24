#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_interval; TYPE_1__ it_value; } ;
struct TYPE_7__ {int /*<<< orphan*/  oldsa; } ;
typedef  TYPE_3__ ProfileState ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_PROF ; 
 int /*<<< orphan*/  SIGPROF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ProfileState *ps)
{
  struct itimerval tm;
  tm.it_value.tv_sec = tm.it_interval.tv_sec = 0;
  tm.it_value.tv_usec = tm.it_interval.tv_usec = 0;
  FUNC0(ITIMER_PROF, &tm, NULL);
  FUNC1(SIGPROF, &ps->oldsa, NULL);
}