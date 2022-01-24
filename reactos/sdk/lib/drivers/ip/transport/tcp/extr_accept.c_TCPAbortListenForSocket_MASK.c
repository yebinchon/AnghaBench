#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {struct TYPE_13__* Flink; } ;
struct TYPE_14__ {TYPE_2__ ListenRequest; } ;
struct TYPE_12__ {int /*<<< orphan*/  Entry; TYPE_3__* AssociatedEndpoint; } ;
typedef  TYPE_1__* PTDI_BUCKET ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  TYPE_3__* PCONNECTION_ENDPOINT ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  Entry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TDI_BUCKET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TdiBucketLookasideList ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC6
(   PCONNECTION_ENDPOINT Listener,
    PCONNECTION_ENDPOINT Connection)
{
    PLIST_ENTRY ListEntry;
    PTDI_BUCKET Bucket;
    KIRQL OldIrql;
    BOOLEAN Found = FALSE;

    FUNC3(Listener, &OldIrql);

    ListEntry = Listener->ListenRequest.Flink;
    while (ListEntry != &Listener->ListenRequest)
    {
        Bucket = FUNC0(ListEntry, TDI_BUCKET, Entry);

        if (Bucket->AssociatedEndpoint == Connection)
        {
            FUNC1(Bucket->AssociatedEndpoint);
            FUNC4( &Bucket->Entry );
            FUNC2(&TdiBucketLookasideList, Bucket);
            Found = TRUE;
            break;
        }

        ListEntry = ListEntry->Flink;
    }

    FUNC5(Listener, OldIrql);

    return Found;
}