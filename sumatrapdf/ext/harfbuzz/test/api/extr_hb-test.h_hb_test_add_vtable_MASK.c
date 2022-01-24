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
typedef  int /*<<< orphan*/  hb_test_fixture_func_t ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gconstpointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static inline void
FUNC3 (const char             *test_path,
		    gsize                   data_size,
		    gconstpointer           test_data,
		    hb_test_fixture_func_t  data_setup,
		    hb_test_fixture_func_t  data_test,
		    hb_test_fixture_func_t  data_teardown)
{
  char *normal_path = FUNC2 (test_path);
  FUNC1 (normal_path, data_size, test_data, data_setup, data_test, data_teardown);
  FUNC0 (normal_path);
}