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
struct TYPE_7__ {int /*<<< orphan*/  DeviceName; } ;
typedef  int /*<<< orphan*/  PNDIS_STRING ;
typedef  TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ GlobalAdapterList ; 
 int /*<<< orphan*/  GlobalAdapterListLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  NDISUIO_ADAPTER_CONTEXT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

PNDISUIO_ADAPTER_CONTEXT
FUNC4(PNDIS_STRING DeviceName)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PNDISUIO_ADAPTER_CONTEXT AdapterContext;

    FUNC1(&GlobalAdapterListLock, &OldIrql);
    CurrentEntry = GlobalAdapterList.Flink;
    while (CurrentEntry != &GlobalAdapterList)
    {
        AdapterContext = FUNC0(CurrentEntry, NDISUIO_ADAPTER_CONTEXT, ListEntry);
        
        /* Check if the device name matches */
        if (FUNC3(&AdapterContext->DeviceName, DeviceName, TRUE))
        {
            FUNC2(&GlobalAdapterListLock, OldIrql);
            return AdapterContext;
        }
        
        CurrentEntry = CurrentEntry->Flink;
    }
    FUNC2(&GlobalAdapterListLock, OldIrql);
    
    return NULL;
}