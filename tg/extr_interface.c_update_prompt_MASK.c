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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ read_one_string ; 
 scalar_t__ readline_active ; 
 scalar_t__ readline_disabled ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC6 (void) {
  if (readline_disabled) {
    FUNC0 (stdout);
    return;
  }
  if (read_one_string) { return; }
  FUNC3 ();
  FUNC5 (FUNC1 ());
  if (readline_active) {
    FUNC4 ();
  }
  FUNC2 ();
}