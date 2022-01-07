
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int friend_number; struct TYPE_8__* prev; struct TYPE_8__* next; TYPE_2__* av; } ;
typedef TYPE_1__ ToxAVCall ;
struct TYPE_9__ {int calls_tail; int calls_head; TYPE_1__** calls; int m; } ;
typedef TYPE_2__ ToxAV ;
typedef int TOXAV_ERR_CALL ;


 int TOXAV_ERR_CALL_FRIEND_ALREADY_IN_CALL ;
 int TOXAV_ERR_CALL_FRIEND_NOT_CONNECTED ;
 int TOXAV_ERR_CALL_FRIEND_NOT_FOUND ;
 int TOXAV_ERR_CALL_MALLOC ;
 int TOXAV_ERR_CALL_OK ;
 int * call_get (TYPE_2__*,int) ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ m_friend_exists (int ,int) ;
 int m_get_friend_connectionstatus (int ,int) ;
 void* realloc (TYPE_1__**,int) ;

ToxAVCall *call_new(ToxAV *av, uint32_t friend_number, TOXAV_ERR_CALL *error)
{

    TOXAV_ERR_CALL rc = TOXAV_ERR_CALL_OK;
    ToxAVCall *call = ((void*)0);

    if (m_friend_exists(av->m, friend_number) == 0) {
        rc = TOXAV_ERR_CALL_FRIEND_NOT_FOUND;
        goto END;
    }

    if (m_get_friend_connectionstatus(av->m, friend_number) < 1) {
        rc = TOXAV_ERR_CALL_FRIEND_NOT_CONNECTED;
        goto END;
    }

    if (call_get(av, friend_number) != ((void*)0)) {
        rc = TOXAV_ERR_CALL_FRIEND_ALREADY_IN_CALL;
        goto END;
    }


    call = calloc(sizeof(ToxAVCall), 1);

    if (call == ((void*)0)) {
        rc = TOXAV_ERR_CALL_MALLOC;
        goto END;
    }

    call->av = av;
    call->friend_number = friend_number;

    if (av->calls == ((void*)0)) {
        av->calls = calloc (sizeof(ToxAVCall *), friend_number + 1);

        if (av->calls == ((void*)0)) {
            free(call);
            call = ((void*)0);
            rc = TOXAV_ERR_CALL_MALLOC;
            goto END;
        }

        av->calls_tail = av->calls_head = friend_number;

    } else if (av->calls_tail < friend_number) {
        void *tmp = realloc(av->calls, sizeof(ToxAVCall *) * (friend_number + 1));

        if (tmp == ((void*)0)) {
            free(call);
            call = ((void*)0);
            rc = TOXAV_ERR_CALL_MALLOC;
            goto END;
        }

        av->calls = tmp;


        uint32_t i = av->calls_tail + 1;

        for (; i < friend_number; i ++)
            av->calls[i] = ((void*)0);

        call->prev = av->calls[av->calls_tail];
        av->calls[av->calls_tail]->next = call;

        av->calls_tail = friend_number;

    } else if (av->calls_head > friend_number) {
        call->next = av->calls[av->calls_head];
        av->calls[av->calls_head]->prev = call;
        av->calls_head = friend_number;
    }

    av->calls[friend_number] = call;

END:

    if (error)
        *error = rc;

    return call;
}
