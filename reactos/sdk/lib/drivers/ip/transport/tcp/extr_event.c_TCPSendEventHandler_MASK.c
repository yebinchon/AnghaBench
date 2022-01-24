#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16_t ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {int /*<<< orphan*/  DisconnectTimer; int /*<<< orphan*/  SendRequest; int /*<<< orphan*/  Lock; int /*<<< orphan*/  SocketContext; } ;
struct TYPE_14__ {int /*<<< orphan*/  MdlAddress; } ;
struct TYPE_12__ {TYPE_3__* RequestContext; } ;
struct TYPE_13__ {scalar_t__ Status; int /*<<< orphan*/  Information; TYPE_1__ Request; int /*<<< orphan*/  Entry; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PMDL ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_3__* PIRP ;
typedef  TYPE_4__* PCONNECTION_ENDPOINT ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_TCP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDI_BUCKET ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 

VOID
FUNC13(void *arg, const u16_t space)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    PIRP Irp;
    NTSTATUS Status;
    PMDL Mdl;
    ULONG BytesSent;
    
    FUNC10(Connection);

    while ((Entry = FUNC4(&Connection->SendRequest, &Connection->Lock)))
    {
        UINT SendLen = 0;
        PVOID SendBuffer = 0;
        
        Bucket = FUNC0( Entry, TDI_BUCKET, Entry );
        
        Irp = Bucket->Request.RequestContext;
        Mdl = Irp->MdlAddress;
        
        FUNC12(DEBUG_TCP,
                    ("Getting the user buffer from %x\n", Mdl));
        
        FUNC9( Mdl, &SendBuffer, &SendLen );
        
        FUNC12(DEBUG_TCP,
                    ("Writing %d bytes to %x\n", SendLen, SendBuffer));
        
        FUNC12(DEBUG_TCP, ("Connection: %x\n", Connection));
        FUNC12
        (DEBUG_TCP,
         ("Connection->SocketContext: %x\n",
          Connection->SocketContext));
        
        Status = FUNC11(FUNC8(Connection,
                                              SendBuffer,
                                              SendLen, &BytesSent, TRUE));
        
        FUNC12(DEBUG_TCP,("TCP Bytes: %d\n", BytesSent));
        
        if( Status == STATUS_PENDING )
        {
            FUNC3(&Connection->SendRequest,
                                        &Bucket->Entry,
                                        &Connection->Lock);
            break;
        }
        else
        {
            FUNC12(DEBUG_TCP,
                        ("Completing Send request: %x %x\n",
                         Bucket->Request, Status));
            
            Bucket->Status = Status;
            Bucket->Information = (Bucket->Status == STATUS_SUCCESS) ? BytesSent : 0;
                        
            FUNC1(Connection, Bucket, FALSE);
        }
    }

    //  If we completed all outstanding send requests then finish all pending shutdown requests,
    //  cancel the timer and dereference the connection
    if (FUNC6(&Connection->SendRequest))
    {
        FUNC5(Connection, STATUS_SUCCESS, FALSE);

        if (FUNC7(&Connection->DisconnectTimer))
        {
            FUNC2(Connection);
        }
    }
    
    FUNC2(Connection);
}