#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ExecInput ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_INPUT_TTY ; 
 int /*<<< orphan*/  EXEC_INPUT_TTY_FAIL ; 
 int /*<<< orphan*/  EXEC_INPUT_TTY_FORCE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(ExecInput i) {
        return FUNC0(i,
                      EXEC_INPUT_TTY,
                      EXEC_INPUT_TTY_FORCE,
                      EXEC_INPUT_TTY_FAIL);
}