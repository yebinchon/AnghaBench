#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  err_t ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  ConnectRequest; } ;
struct TYPE_8__ {scalar_t__ Information; int /*<<< orphan*/  Status; } ;
typedef  TYPE_1__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_2__* PCONNECTION_ENDPOINT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  TDI_BUCKET ; 

VOID
FUNC6(void *arg, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = (PCONNECTION_ENDPOINT)arg;
    PTDI_BUCKET Bucket;
    PLIST_ENTRY Entry;
        
    FUNC4(Connection);
    
    while ((Entry = FUNC3(&Connection->ConnectRequest, &Connection->Lock)))
    {
        
        Bucket = FUNC0( Entry, TDI_BUCKET, Entry );
        
        Bucket->Status = FUNC5(err);
        Bucket->Information = 0;
                
        FUNC1(Connection, Bucket, FALSE);
    }
    
    FUNC2(Connection);
}