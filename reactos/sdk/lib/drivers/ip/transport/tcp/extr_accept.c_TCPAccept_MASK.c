#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ListenRequest; } ;
struct TYPE_10__ {int /*<<< orphan*/  RequestContext; int /*<<< orphan*/  RequestNotifyObject; } ;
struct TYPE_11__ {int /*<<< orphan*/  Entry; TYPE_1__ Request; TYPE_3__* AssociatedEndpoint; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PTDI_REQUEST ;
typedef  TYPE_2__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PTCP_COMPLETION_ROUTINE ;
typedef  TYPE_3__* PCONNECTION_ENDPOINT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  TdiBucketLookasideList ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC5 ( PTDI_REQUEST Request,
                     PCONNECTION_ENDPOINT Listener,
                     PCONNECTION_ENDPOINT Connection,
                     PTCP_COMPLETION_ROUTINE Complete,
                     PVOID Context )
{
    NTSTATUS Status;
    PTDI_BUCKET Bucket;
    KIRQL OldIrql;

    FUNC2(Listener, &OldIrql);

    Bucket = FUNC0(&TdiBucketLookasideList);
    
    if (Bucket)
    {
        Bucket->AssociatedEndpoint = Connection;
        FUNC3(Bucket->AssociatedEndpoint);

        Bucket->Request.RequestNotifyObject = Complete;
        Bucket->Request.RequestContext = Context;
        FUNC1( &Listener->ListenRequest, &Bucket->Entry );
        Status = STATUS_PENDING;
    }
    else
        Status = STATUS_NO_MEMORY;

    FUNC4(Listener, OldIrql);

    return Status;
}