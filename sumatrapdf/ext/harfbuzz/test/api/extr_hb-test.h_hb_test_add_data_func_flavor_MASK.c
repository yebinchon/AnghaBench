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
typedef  int /*<<< orphan*/  hb_test_data_func_t ;
typedef  int /*<<< orphan*/  gconstpointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3 (const char          *test_path,
			      const char          *flavor,
			      gconstpointer        test_data,
			      hb_test_data_func_t  test_func)
{
  char *path = FUNC1 ("%s/%s", test_path, flavor);
  FUNC2 (path, test_data, test_func);
  FUNC0 (path);
}