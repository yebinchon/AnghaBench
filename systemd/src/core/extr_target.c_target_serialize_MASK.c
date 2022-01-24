#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_9__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Target ;
typedef  TYPE_1__ FILE ;
typedef  TYPE_1__ FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u, FILE *f, FDSet *fds) {
        Target *s = FUNC0(u);

        FUNC1(s);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC2(f, "state", FUNC3(s->state));
        return 0;
}