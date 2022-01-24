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
typedef  int TOKEN_INFORMATION_CLASS ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

PVOID
FUNC5(HANDLE hToken, TOKEN_INFORMATION_CLASS tic)
{
	BOOL bResult;
    DWORD n;
	PBYTE p = 0;

    bResult = FUNC1(hToken, tic, 0, 0, &n);
    if ( ! bResult && FUNC0() != ERROR_INSUFFICIENT_BUFFER)
		return 0;

    p = (PBYTE) FUNC3(n);
    if ( ! FUNC1(hToken, tic, p, n, &n) )
	{
		FUNC4("GetFromToken() failed for TOKEN_INFORMATION_CLASS(%d): %d\n", tic, FUNC0());
		FUNC2(p);
		return 0;
	}

	return p;
}