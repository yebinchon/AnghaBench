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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Unit *u, FILE *f, FDSet *fds) {
        Path *p = FUNC0(u);

        FUNC1(u);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC4(f, "state", FUNC3(p->state));
        (void) FUNC4(f, "result", FUNC2(p->result));

        return 0;
}