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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static const char *FUNC5(lua_State *L, const char *name)
{
  FILE *fp = FUNC3(name, "r");
  const char *p = NULL;
  if (fp) {
    char buf[256];
    if (FUNC2(buf, sizeof(buf), fp)) {
      if (!FUNC4(buf, "/* GNU ld script", 16)) {  /* ld script magic? */
	while (FUNC2(buf, sizeof(buf), fp)) {  /* Check all lines. */
	  p = FUNC0(L, buf);
	  if (p) break;
	}
      } else {  /* Otherwise check only the first line. */
	p = FUNC0(L, buf);
      }
    }
    FUNC1(fp);
  }
  return p;
}