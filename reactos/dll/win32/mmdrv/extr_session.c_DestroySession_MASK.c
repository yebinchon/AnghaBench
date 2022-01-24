#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ SessionInfo ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* session_list ; 
 int /*<<< orphan*/  session_lock ; 

VOID
FUNC4(SessionInfo* session)
{
    HANDLE heap = FUNC1();
    SessionInfo* session_node;
    SessionInfo* session_prev;

    /* TODO: More cleanup stuff */

    /* Remove from the list */

    FUNC0(&session_lock);

    session_node = session_list;
    session_prev = NULL;

    while ( session_node )
    {
        if ( session_node == session )
        {
            /* Bridge the gap for when we go */
            session_prev->next = session->next;
            break;
        }

        /* Save the previous node, fetch the next */
        session_prev = session_node;
        session_node = session_node->next;
    }

    FUNC3(&session_lock);

    FUNC2(heap, 0, session);
}