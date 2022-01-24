#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_12__ {scalar_t__ tei_entity; scalar_t__ tei_instance; TYPE_2__* context; } ;
struct TYPE_11__ {int /*<<< orphan*/  BcastAddr; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Addr; int /*<<< orphan*/  Index; } ;
struct TYPE_10__ {int /*<<< orphan*/  Index; } ;
struct TYPE_9__ {scalar_t__ tei_entity; scalar_t__ tei_instance; } ;
typedef  int /*<<< orphan*/  TDI_STATUS ;
typedef  TYPE_1__ TDIEntityID ;
typedef  int /*<<< orphan*/  PUINT ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  TYPE_2__* PIP_INTERFACE ;
typedef  TYPE_3__* PIPADDR_ENTRY ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  int /*<<< orphan*/  IPADDR_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  ADE_ADDRMASK ; 
 int /*<<< orphan*/  ADE_BROADCAST ; 
 int /*<<< orphan*/  ADE_UNICAST ; 
 int /*<<< orphan*/  DEBUG_INFO ; 
 size_t EntityCount ; 
 TYPE_8__* EntityList ; 
 int /*<<< orphan*/  EntityListLock ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP_ADDRESS_TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  TDI_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TDI_NO_RESOURCES ; 
 int /*<<< orphan*/  TDI_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

TDI_STATUS FUNC7(TDIEntityID ID,
				    PNDIS_BUFFER Buffer,
				    PUINT BufferSize)
{
    KIRQL OldIrql;
    PIPADDR_ENTRY IPEntry;
    PIP_INTERFACE CurrentIF;
    UINT i;

    FUNC4(DEBUG_INFO, ("Called.\n"));


    FUNC5(&EntityListLock, &OldIrql);

    for (i = 0; i < EntityCount; i++)
    {
        if (EntityList[i].tei_entity == ID.tei_entity &&
            EntityList[i].tei_instance == ID.tei_instance)
            break;
    }

    if (i == EntityCount)
    {
        FUNC6(&EntityListLock, OldIrql);
        return TDI_INVALID_PARAMETER;
    }

    IPEntry = FUNC0(NonPagedPool, sizeof(IPADDR_ENTRY), IP_ADDRESS_TAG);
    if (!IPEntry)
    {
        FUNC6(&EntityListLock, OldIrql);
        return TDI_NO_RESOURCES;
    }

    CurrentIF = EntityList[i].context;

    IPEntry->Index = CurrentIF->Index;
    FUNC2(CurrentIF,
			    ADE_UNICAST,
			    &IPEntry->Addr);
    FUNC2(CurrentIF,
			    ADE_ADDRMASK,
			    &IPEntry->Mask);
    FUNC2(CurrentIF,
			    ADE_BROADCAST,
			    &IPEntry->BcastAddr);

    FUNC6(&EntityListLock, OldIrql);

    FUNC3((PCHAR)IPEntry, sizeof(IPADDR_ENTRY),
		Buffer, BufferSize);

    FUNC1(IPEntry, IP_ADDRESS_TAG);

    return TDI_SUCCESS;
}