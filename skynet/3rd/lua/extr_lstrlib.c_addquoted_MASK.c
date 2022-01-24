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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char const) ; 

__attribute__((used)) static void FUNC6 (luaL_Buffer *b, const char *s, size_t len) {
  FUNC3(b, '"');
  while (len--) {
    if (*s == '"' || *s == '\\' || *s == '\n') {
      FUNC3(b, '\\');
      FUNC3(b, *s);
    }
    else if (FUNC0(FUNC5(*s))) {
      char buff[10];
      if (!FUNC1(FUNC5(*(s+1))))
        FUNC2(buff, sizeof(buff), "\\%d", (int)FUNC5(*s));
      else
        FUNC2(buff, sizeof(buff), "\\%03d", (int)FUNC5(*s));
      FUNC4(b, buff);
    }
    else
      FUNC3(b, *s);
    s++;
  }
  FUNC3(b, '"');
}