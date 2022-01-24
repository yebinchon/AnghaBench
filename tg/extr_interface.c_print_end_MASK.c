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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ in_readline ; 
 scalar_t__ prompt_was ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ readline_active ; 
 scalar_t__ readline_disabled ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3 (void) {
  if (in_readline) { return; }
  if (readline_disabled) { 
    FUNC1 (stdout);
    return; 
  }
  FUNC0 (prompt_was);
  if (readline_active) {
    FUNC2 ();
  }
  prompt_was = 0;
}