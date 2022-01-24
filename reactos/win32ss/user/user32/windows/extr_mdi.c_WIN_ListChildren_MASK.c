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
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

HWND* FUNC6 (HWND hWndparent)
{

  DWORD dwCount = 0;
  HWND* pHwnd = NULL;
  HANDLE hHeap;
  NTSTATUS Status;

  Status = FUNC4 ( NULL, hWndparent, FALSE, 0, 0, NULL, &dwCount );

  if ( !FUNC3( Status ) )
    return 0;

  /* allocate buffer to receive HWND handles */
  hHeap = FUNC0();

  pHwnd = FUNC1 ( hHeap, 0, sizeof(HWND)*(dwCount+1) );
  if ( !pHwnd )
    {
      FUNC5 ( ERROR_NOT_ENOUGH_MEMORY );
      return 0;
    }

  /* now call kernel again to fill the buffer this time */
  Status = FUNC4 (NULL, hWndparent, FALSE, 0, 0, pHwnd, &dwCount );

  if ( !FUNC3( Status ) )
    {
      if ( pHwnd )
        FUNC2 ( hHeap, 0, pHwnd );
      return 0;
    }

  pHwnd[dwCount] = (HWND) 0;

  return pHwnd;
}