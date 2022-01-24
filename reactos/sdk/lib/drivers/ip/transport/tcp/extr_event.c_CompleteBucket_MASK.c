#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/  AssociatedEndpoint; } ;
typedef  TYPE_1__* PTDI_BUCKET ;
typedef  int /*<<< orphan*/  PCONNECTION_ENDPOINT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (TYPE_1__*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

VOID
FUNC3(PCONNECTION_ENDPOINT Connection, PTDI_BUCKET Bucket, const BOOLEAN Synchronous)
{
    FUNC2(Connection);
    Bucket->AssociatedEndpoint = Connection;
    if (Synchronous)
    {
        FUNC0(Bucket);
    }
    else
    {
        FUNC1(BucketCompletionWorker, Bucket);
    }
}