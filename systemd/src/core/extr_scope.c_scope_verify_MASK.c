#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ load_state; int /*<<< orphan*/  manager; int /*<<< orphan*/  pids; } ;
typedef  int /*<<< orphan*/  Scope ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_INIT_SCOPE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ UNIT_LOADED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Scope *s) {
        FUNC2(*s);
        FUNC2(FUNC1(s)->load_state == UNIT_LOADED);

        if (FUNC4(FUNC1(s)->pids) &&
            !FUNC0(FUNC1(s)->manager) &&
            !FUNC5(FUNC1(s), SPECIAL_INIT_SCOPE)) {
                FUNC3(FUNC1(s), "Scope has no PIDs. Refusing.");
                return -ENOENT;
        }

        return 0;
}