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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  cmd_DeletePortW ; 
 int /*<<< orphan*/  hXcv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC3(LPWSTR portname)
{
    DWORD   res;

    if (&pDeletePort) {
        res = FUNC1(NULL, 0, portname);
    }
    else
    {
        res = FUNC2(hXcv, cmd_DeletePortW, (PBYTE) portname, (FUNC0(portname) + 1) * sizeof(WCHAR), NULL, 0, NULL);
    }
    return res;
}