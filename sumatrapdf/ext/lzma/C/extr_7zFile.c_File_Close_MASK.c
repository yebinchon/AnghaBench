#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WRes ;
struct TYPE_3__ {scalar_t__ handle; int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ CSzFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

WRes FUNC3(CSzFile *p)
{
  #ifdef USE_WINDOWS_FILE
  if (p->handle != INVALID_HANDLE_VALUE)
  {
    if (!CloseHandle(p->handle))
      return GetLastError();
    p->handle = INVALID_HANDLE_VALUE;
  }
  #else
  if (p->file != NULL)
  {
    int res = FUNC2(p->file);
    if (res != 0)
      return res;
    p->file = NULL;
  }
  #endif
  return 0;
}