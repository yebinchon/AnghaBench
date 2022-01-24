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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t FUNC4 (const char *s, TValue *o) {
  lua_Integer i; lua_Number n;
  const char *e;
  if ((e = FUNC1(s, &i)) != NULL) {  /* try as an integer */
    FUNC3(o, i);
  }
  else if ((e = FUNC0(s, &n)) != NULL) {  /* else try as a float */
    FUNC2(o, n);
  }
  else
    return 0;  /* conversion failed */
  return (e - s) + 1;  /* success; return string size */
}