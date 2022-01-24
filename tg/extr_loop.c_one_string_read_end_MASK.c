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
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  one_string ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 size_t one_string_num ; 
 int /*<<< orphan*/ * one_string_prompt ; 
 int /*<<< orphan*/ ** one_string_results ; 
 size_t one_string_total_args ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ read_one_string ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  string_cb_arg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (void) {
  FUNC3 ("\n");
  FUNC1 (stdout);

  read_one_string = 0;
  FUNC5 (one_string_prompt);
  one_string_prompt = NULL;
  FUNC4 ();

  one_string_results[one_string_num] = FUNC6 (one_string);
  ++one_string_num;

  if (one_string_num < one_string_total_args) {
    FUNC0 (TLS);
  } else {
    FUNC2 (TLS, (void *)one_string_results, string_cb_arg);
    int i;
    for (i = 0; i < one_string_total_args; i++) {
      FUNC5 (one_string_results[i]);
    }
  }
}