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
struct TYPE_4__ {int /*<<< orphan*/  std_error; int /*<<< orphan*/  std_output; int /*<<< orphan*/  std_input; scalar_t__ tty_vt_disallocate; scalar_t__ tty_vhangup; scalar_t__ tty_reset; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const ExecContext *ec) {
        FUNC0(ec);

        return ec->tty_reset ||
                ec->tty_vhangup ||
                ec->tty_vt_disallocate ||
                FUNC1(ec->std_input) ||
                FUNC2(ec->std_output) ||
                FUNC2(ec->std_error);
}