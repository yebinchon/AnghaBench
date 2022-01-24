#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  ReceiveRequest; } ;
struct TYPE_13__ {int /*<<< orphan*/  MdlAddress; } ;
struct TYPE_11__ {TYPE_3__* RequestContext; } ;
struct TYPE_12__ {int /*<<< orphan*/  Information; scalar_t__ Status; int /*<<< orphan*/  Entry; TYPE_1__ Request; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PMDL ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_3__* PIRP ;
typedef  TYPE_4__* PCONNECTION_ENDPOINT ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ STATUS_PENDING ; 
 int /*<<< orphan*/  TDI_BUCKET ; 

VOID
FUNC8(void *arg)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    PIRP Irp;
    PMDL Mdl;
    UINT Received;
    UINT RecvLen;
    PUCHAR RecvBuffer;
    NTSTATUS Status;

    FUNC7(Connection);

    while ((Entry = FUNC4(&Connection->ReceiveRequest, &Connection->Lock)))
    {
        Bucket = FUNC0( Entry, TDI_BUCKET, Entry );
        
        Irp = Bucket->Request.RequestContext;
        Mdl = Irp->MdlAddress;

        FUNC6( Mdl, &RecvBuffer, &RecvLen );

        Status = FUNC5(Connection, RecvBuffer, RecvLen, &Received);
        if (Status == STATUS_PENDING)
        {
            FUNC3(&Connection->ReceiveRequest,
                                        &Bucket->Entry,
                                        &Connection->Lock);
            break;
        }

        Bucket->Status = Status;
        Bucket->Information = Received;

        FUNC1(Connection, Bucket, FALSE);
    }

    FUNC2(Connection);
}