#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int /*<<< orphan*/  pwszName; } ;
typedef  TYPE_1__* PLOCAL_PORT ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  PCWSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Entry ; 
 int /*<<< orphan*/  LOCAL_PORT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ _PortList ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PLOCAL_PORT
FUNC3(PCWSTR pwszName)
{
    PLIST_ENTRY pEntry;
    PLOCAL_PORT pPort;

    FUNC1("FindPort(%S)\n", pwszName);

    if (!pwszName)
        return NULL;

    for (pEntry = _PortList.Flink; pEntry != &_PortList; pEntry = pEntry->Flink)
    {
        pPort = FUNC0(pEntry, LOCAL_PORT, Entry);

        if (FUNC2(pPort->pwszName, pwszName) == 0)
            return pPort;
    }

    return NULL;
}