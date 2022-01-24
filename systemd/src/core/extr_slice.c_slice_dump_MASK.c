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
typedef  TYPE_1__ Slice ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char const*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Unit *u, FILE *f, const char *prefix) {
        Slice *t = FUNC0(u);

        FUNC2(t);
        FUNC2(f);

        FUNC4(f,
                "%sSlice State: %s\n",
                prefix, FUNC5(t->state));

        FUNC3(FUNC1(t), f, prefix);
}