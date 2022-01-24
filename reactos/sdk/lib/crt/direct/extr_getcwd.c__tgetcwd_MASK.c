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
typedef  int /*<<< orphan*/  _TCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

_TCHAR* FUNC6(_TCHAR* buf, int size)
{
  _TCHAR dir[MAX_PATH];
  DWORD dir_len = FUNC0(MAX_PATH,dir);

  if (dir_len == 0)
  {
    FUNC2(FUNC1());
    return NULL; /* FIXME: Real return value untested */
  }

  if (!buf)
  {
    return FUNC5(dir);
  }

  if (dir_len >= (DWORD)size)
  {
    FUNC3(ERANGE);
    return NULL; /* buf too small */
  }

  FUNC4(buf,dir);
  return buf;
}