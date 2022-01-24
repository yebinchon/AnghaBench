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
typedef  int /*<<< orphan*/  TFun ;
typedef  int /*<<< orphan*/  TCase ;
typedef  int /*<<< orphan*/  Suite ;
typedef  int /*<<< orphan*/ * SFun ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static Suite* FUNC5(const char* name, TFun *tests, size_t num_tests, SFun setup, SFun teardown)
{
  size_t i;
  Suite *s = FUNC1(name);

  for(i = 0; i < num_tests; i++) {
    /* Core test case */
    TCase *tc_core = FUNC4("Core");
    if ((setup != NULL) || (teardown != NULL)) {
      FUNC2(tc_core, setup, teardown);
    }
    FUNC3(tc_core, tests[i]);
    FUNC0(s, tc_core);
  }
  return s;
}