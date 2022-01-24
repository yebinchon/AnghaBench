#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
struct TYPE_13__ {TYPE_1__ ReceiveQueue; } ;
struct TYPE_12__ {scalar_t__ Irp; int /*<<< orphan*/  ListEntry; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  scalar_t__ PIRP ;
typedef  TYPE_2__* PDATAGRAM_RECEIVE_REQUEST ;
typedef  TYPE_3__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  DATAGRAM_RECEIVE_REQUEST ; 
 int /*<<< orphan*/  DATAGRAM_RECV_TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC6(
    PADDRESS_FILE AddrFile,
    PIRP Irp)
{
    PLIST_ENTRY ListEntry;
    PDATAGRAM_RECEIVE_REQUEST ReceiveRequest;
    KIRQL OldIrql;
    BOOLEAN Found = FALSE;

    FUNC4(MAX_TRACE, ("Called (Cancel IRP %08x for file %08x).\n",
                            Irp, AddrFile));

    FUNC2(AddrFile, &OldIrql);

    for( ListEntry = AddrFile->ReceiveQueue.Flink; 
         ListEntry != &AddrFile->ReceiveQueue;
         ListEntry = ListEntry->Flink )
    {
        ReceiveRequest = FUNC0
            (ListEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);

        FUNC4(MAX_TRACE, ("Request: %08x?\n", ReceiveRequest));

        if (ReceiveRequest->Irp == Irp)
        {
            FUNC3(&ReceiveRequest->ListEntry);
            FUNC1(ReceiveRequest, DATAGRAM_RECV_TAG);
            Found = TRUE;
            break;
        }
    }

    FUNC5(AddrFile, OldIrql);

    FUNC4(MAX_TRACE, ("Done.\n"));

    return Found;
}