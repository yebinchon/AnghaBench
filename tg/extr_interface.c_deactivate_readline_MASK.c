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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ read_one_string ; 
 int rl_end ; 
 int /*<<< orphan*/  rl_line_buffer ; 
 int /*<<< orphan*/  rl_point ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__* saved_line ; 
 int /*<<< orphan*/  saved_point ; 
 int /*<<< orphan*/  stdout ; 

void FUNC8 (void) {
  if (read_one_string) {
    FUNC4 ("\033[2K\r");
    FUNC1 (stdout);
  } else {
    saved_point = rl_point;
    saved_line = FUNC2 (rl_end + 1);
    FUNC0 (saved_line);
    saved_line[rl_end] = 0;
    FUNC3 (saved_line, rl_line_buffer, rl_end);

    FUNC7();
    FUNC6("", 0);
    FUNC5();
  }
}