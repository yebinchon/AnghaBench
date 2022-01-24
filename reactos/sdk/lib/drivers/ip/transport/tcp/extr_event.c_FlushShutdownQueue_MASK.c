#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int /*<<< orphan*/  ShutdownRequest; int /*<<< orphan*/  Lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  Status; scalar_t__ Information; } ;
typedef  TYPE_1__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_2__* PCONNECTION_ENDPOINT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TDI_BUCKET ; 

VOID
FUNC7(PCONNECTION_ENDPOINT Connection, const NTSTATUS Status, const BOOLEAN interlocked)
{
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
    
    FUNC5(Connection);

    if (interlocked)
    {
        while ((Entry = FUNC3(&Connection->ShutdownRequest, &Connection->Lock)))
        {   
            Bucket = FUNC0( Entry, TDI_BUCKET, Entry );
        
            Bucket->Status = Status;
            Bucket->Information = 0;
        
            FUNC1(Connection, Bucket, FALSE);
        }
    }
    else
    {
        while (!FUNC4(&Connection->ShutdownRequest))
        {
            Entry = FUNC6(&Connection->ShutdownRequest);
            
            Bucket = FUNC0(Entry, TDI_BUCKET, Entry);
            
            Bucket->Information = 0;
            Bucket->Status = Status;
            
            FUNC1(Connection, Bucket, FALSE);
        }
    }

    FUNC2(Connection);
}