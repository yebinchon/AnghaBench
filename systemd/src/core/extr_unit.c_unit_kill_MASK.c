#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_2__ {int (* kill ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  KillWho ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _KILL_WHO_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC4(Unit *u, KillWho w, int signo, sd_bus_error *error) {
        FUNC2(*u);
        FUNC2(w >= 0 && w < _KILL_WHO_MAX);
        FUNC2(FUNC0(signo));

        if (!FUNC1(u)->kill)
                return -EOPNOTSUPP;

        return FUNC1(u)->kill(u, w, signo, error);
}