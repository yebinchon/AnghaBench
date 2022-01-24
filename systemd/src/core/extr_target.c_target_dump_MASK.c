#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Target ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Unit *u, FILE *f, const char *prefix) {
        Target *t = FUNC0(u);

        FUNC1(t);
        FUNC1(f);

        FUNC2(f,
                "%sTarget State: %s\n",
                prefix, FUNC3(t->state));
}