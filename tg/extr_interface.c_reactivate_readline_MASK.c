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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  one_string ; 
 int one_string_flags ; 
 char* one_string_len ; 
 char* one_string_prompt ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ read_one_string ; 
 int /*<<< orphan*/  rl_point ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saved_line ; 
 int /*<<< orphan*/  saved_point ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC7 (void) {
  if (read_one_string) {
    FUNC3 ("%s ", one_string_prompt);
    if (!(one_string_flags & 1)) {
      FUNC3 ("%.*s", one_string_len, one_string);
    }
    FUNC0 (stdout);
  } else {
    FUNC6 (FUNC2 ());
    FUNC5(saved_line, 0);
    rl_point = saved_point;
    FUNC4();
    FUNC1 (saved_line);
  }
}