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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,char*,...) ; 

__attribute__((used)) static void FUNC6(const char *src, char *dst, BOOL expect_short)
{
  DWORD retval;
  char shortname[MAX_PATH];

  retval = FUNC0(MAX_PATH, dst);
  FUNC5(retval > 0, "GetCurrentDirectoryA returned %d, GLE=%d\n",
     retval, FUNC1());
  if(dst[retval-1] != '\\')
    /* Append backslash only when it's missing */
      FUNC3(dst, "\\");
  FUNC3(dst, src);
  if(expect_short) 
  {
    FUNC4(shortname, dst, MAX_PATH);
    retval = FUNC2(shortname, dst, MAX_PATH-1);
    FUNC5(retval > 0, "GetShortPathNameA returned %d for '%s', GLE=%d\n",
       retval, dst, FUNC1());
  }
}