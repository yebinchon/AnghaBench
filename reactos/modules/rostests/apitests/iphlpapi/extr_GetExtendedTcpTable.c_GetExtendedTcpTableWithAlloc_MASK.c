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
typedef  int /*<<< orphan*/  TCP_TABLE_CLASS ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NO_ERROR ; 

__attribute__((used)) static DWORD FUNC4(PVOID *TcpTable, BOOL Order, DWORD Family, TCP_TABLE_CLASS Class)
{
    DWORD ret;
    DWORD Size = 0;

    *TcpTable = NULL;

    ret = FUNC0(*TcpTable, &Size, Order, Family, Class, 0);
    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        *TcpTable = FUNC2(FUNC1(), 0, Size);
        if (*TcpTable == NULL)
        {
            return ERROR_OUTOFMEMORY;
        }

        ret = FUNC0(*TcpTable, &Size, Order, Family, Class, 0);
        if (ret != NO_ERROR)
        {
            FUNC3(FUNC1(), 0, *TcpTable);
            *TcpTable = NULL;
        }
    }

    return ret;
}