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
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ UnitFileList ;

/* Variables and functions */
 int /*<<< orphan*/  FNM_NOESCAPE ; 
 char** arg_types ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(const UnitFileList *u, char **states, char **patterns) {
        FUNC0(u);

        if (!FUNC4(patterns, FUNC1(u->path), FNM_NOESCAPE))
                return false;

        if (!FUNC5(arg_types)) {
                const char *dot;

                dot = FUNC2(u->path, '.');
                if (!dot)
                        return false;

                if (!FUNC3(arg_types, dot+1))
                        return false;
        }

        if (!FUNC5(states) &&
            !FUNC3(states, FUNC6(u->state)))
                return false;

        return true;
}