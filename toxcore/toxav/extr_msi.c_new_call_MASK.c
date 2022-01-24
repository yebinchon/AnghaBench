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
typedef  int uint32_t ;
struct TYPE_9__ {int friend_number; struct TYPE_9__* prev; struct TYPE_9__* next; TYPE_1__* session; } ;
struct TYPE_8__ {int calls_tail; int calls_head; TYPE_2__** calls; } ;
typedef  TYPE_1__ MSISession ;
typedef  TYPE_2__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (TYPE_2__**,int) ; 

MSICall *FUNC4 (MSISession *session, uint32_t friend_number)
{
    FUNC0(session);

    MSICall *rc = FUNC1(sizeof(MSICall), 1);

    if (rc == NULL)
        return NULL;

    rc->session = session;
    rc->friend_number = friend_number;

    if (session->calls == NULL) { /* Creating */
        session->calls = FUNC1 (sizeof(MSICall *), friend_number + 1);

        if (session->calls == NULL) {
            FUNC2(rc);
            return NULL;
        }

        session->calls_tail = session->calls_head = friend_number;

    } else if (session->calls_tail < friend_number) { /* Appending */
        void *tmp = FUNC3(session->calls, sizeof(MSICall *) * (friend_number + 1));

        if (tmp == NULL) {
            FUNC2(rc);
            return NULL;
        }

        session->calls = tmp;

        /* Set fields in between to null */
        uint32_t i = session->calls_tail + 1;

        for (; i < friend_number; i ++)
            session->calls[i] = NULL;

        rc->prev = session->calls[session->calls_tail];
        session->calls[session->calls_tail]->next = rc;

        session->calls_tail = friend_number;

    } else if (session->calls_head > friend_number) { /* Inserting at front */
        rc->next = session->calls[session->calls_head];
        session->calls[session->calls_head]->prev = rc;
        session->calls_head = friend_number;
    }

    session->calls[friend_number] = rc;
    return rc;
}