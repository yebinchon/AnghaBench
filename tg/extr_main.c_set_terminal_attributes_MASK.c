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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  term_in ; 
 int /*<<< orphan*/  term_out ; 
 scalar_t__ term_set_in ; 
 scalar_t__ term_set_out ; 

void FUNC2 (void) {
  if (term_set_in) {
    if (FUNC1 (STDIN_FILENO, 0, &term_in) < 0) {
      FUNC0 ("tcsetattr()");
    }
  }
  if (term_set_out) {
    if (FUNC1 (STDOUT_FILENO, 0, &term_out) < 0) {
      FUNC0 ("tcsetattr()");
    }
  }
}