
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int friend_number; struct TYPE_9__* prev; struct TYPE_9__* next; TYPE_1__* session; } ;
struct TYPE_8__ {int calls_tail; int calls_head; TYPE_2__** calls; } ;
typedef TYPE_1__ MSISession ;
typedef TYPE_2__ MSICall ;


 int assert (TYPE_1__*) ;
 void* calloc (int,int) ;
 int free (TYPE_2__*) ;
 void* realloc (TYPE_2__**,int) ;

MSICall *new_call (MSISession *session, uint32_t friend_number)
{
    assert(session);

    MSICall *rc = calloc(sizeof(MSICall), 1);

    if (rc == ((void*)0))
        return ((void*)0);

    rc->session = session;
    rc->friend_number = friend_number;

    if (session->calls == ((void*)0)) {
        session->calls = calloc (sizeof(MSICall *), friend_number + 1);

        if (session->calls == ((void*)0)) {
            free(rc);
            return ((void*)0);
        }

        session->calls_tail = session->calls_head = friend_number;

    } else if (session->calls_tail < friend_number) {
        void *tmp = realloc(session->calls, sizeof(MSICall *) * (friend_number + 1));

        if (tmp == ((void*)0)) {
            free(rc);
            return ((void*)0);
        }

        session->calls = tmp;


        uint32_t i = session->calls_tail + 1;

        for (; i < friend_number; i ++)
            session->calls[i] = ((void*)0);

        rc->prev = session->calls[session->calls_tail];
        session->calls[session->calls_tail]->next = rc;

        session->calls_tail = friend_number;

    } else if (session->calls_head > friend_number) {
        rc->next = session->calls[session->calls_head];
        session->calls[session->calls_head]->prev = rc;
        session->calls_head = friend_number;
    }

    session->calls[friend_number] = rc;
    return rc;
}
