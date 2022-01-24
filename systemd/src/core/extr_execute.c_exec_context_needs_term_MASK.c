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
struct TYPE_4__ {int /*<<< orphan*/  tty_path; int /*<<< orphan*/  std_error; int /*<<< orphan*/  std_output; int /*<<< orphan*/  std_input; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const ExecContext *c) {
        FUNC0(c);

        /* Return true if the execution context suggests we should set $TERM to something useful. */

        if (FUNC1(c->std_input))
                return true;

        if (FUNC2(c->std_output))
                return true;

        if (FUNC2(c->std_error))
                return true;

        return !!c->tty_path;
}