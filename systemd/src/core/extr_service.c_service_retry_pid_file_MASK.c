#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state; int /*<<< orphan*/  pid_file; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_START ; 
 int /*<<< orphan*/  SERVICE_START_POST ; 
 int /*<<< orphan*/  SERVICE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(Service *s) {
        int r;

        FUNC1(s->pid_file);
        FUNC1(FUNC0(s->state, SERVICE_START, SERVICE_START_POST));

        r = FUNC3(s, false);
        if (r < 0)
                return r;

        FUNC4(s);

        FUNC2(s, SERVICE_SUCCESS);
        return 0;
}