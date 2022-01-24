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
 int MAX_ISOPATHNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 

bool
FUNC7 (const char pathname[])
{
  const char *p = NULL;

  FUNC0 (pathname != NULL);

  if ((p = FUNC6 (pathname, '/')))
    {
      bool rc;
      char *_tmp = FUNC4 (pathname);

      *FUNC6 (_tmp, '/') = '\0';

      rc = FUNC2 (_tmp);

      FUNC1 (_tmp);

      if (!rc)
        return false;

      p++;
    }
  else
    p = pathname;

  if (FUNC5 (pathname) > (MAX_ISOPATHNAME - 6))
    return false;

  {
    int len = 0;
    int dots = 0;

    for (; *p; p++)
      if (FUNC3 (*p))
        {
          len++;
          if (dots == 0 ? len > 8 : len > 3)
            return false;
        }
      else if (*p == '.')
        {
          dots++;
          if (dots > 1)
            return false;
          if (!len)
            return false;
          len = 0;
        }
      else
        return false;

    if (dots != 1)
      return false;
  }

  return true;
}