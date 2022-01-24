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
struct TYPE_3__ {int /*<<< orphan*/  default_dependencies; } ;
typedef  int /*<<< orphan*/  Slice ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_SHUTDOWN_TARGET ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_CONFLICTS ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Slice *s) {
        int r;

        FUNC1(s);

        if (!FUNC0(s)->default_dependencies)
                return 0;

        /* Make sure slices are unloaded on shutdown */
        r = FUNC2(
                        FUNC0(s),
                        UNIT_BEFORE, UNIT_CONFLICTS,
                        SPECIAL_SHUTDOWN_TARGET, true, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        return 0;
}