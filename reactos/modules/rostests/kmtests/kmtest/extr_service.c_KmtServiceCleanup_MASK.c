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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ ScmHandle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

DWORD
FUNC2(
    BOOLEAN IgnoreErrors)
{
    DWORD Error = ERROR_SUCCESS;

    if (ScmHandle && !FUNC0(ScmHandle) && !IgnoreErrors)
        FUNC1(Error);

    return Error;
}