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
 scalar_t__ MAX_ISOPATHNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const*) ; 

bool
FUNC3 (const char pathname[])
{
  const char *p = pathname;
  int len;

  FUNC0 (pathname != NULL);

  if (*p == '/' || *p == '.' || *p == '\0')
    return false;

  if (FUNC2 (pathname) > MAX_ISOPATHNAME)
    return false;

  len = 0;
  for (; *p; p++)
    if (FUNC1 (*p))
      {
        len++;
        if (len > 8)
          return false;
      }
    else if (*p == '/')
      {
        if (!len)
          return false;
        len = 0;
      }
    else
      return false; /* unexpected char */

  if (!len)
    return false; /* last char may not be '/' */

  return true;
}