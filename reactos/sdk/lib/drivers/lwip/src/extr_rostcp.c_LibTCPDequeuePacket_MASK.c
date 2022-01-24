#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  PacketQueue; } ;
typedef  int /*<<< orphan*/ * PQUEUE_ENTRY ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_1__* PCONNECTION_ENDPOINT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  QUEUE_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

PQUEUE_ENTRY FUNC3(PCONNECTION_ENDPOINT Connection)
{
    PLIST_ENTRY Entry;
    PQUEUE_ENTRY qp = NULL;

    if (FUNC1(&Connection->PacketQueue)) return NULL;

    Entry = FUNC2(&Connection->PacketQueue);

    qp = FUNC0(Entry, QUEUE_ENTRY, ListEntry);

    return qp;
}