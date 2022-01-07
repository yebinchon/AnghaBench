
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long id; struct TYPE_4__* next; } ;
typedef TYPE_1__ aeTimeEvent ;
struct TYPE_5__ {TYPE_1__* timeEventHead; } ;
typedef TYPE_2__ aeEventLoop ;


 long long AE_DELETED_EVENT_ID ;
 int AE_ERR ;
 int AE_OK ;

int aeDeleteTimeEvent(aeEventLoop *eventLoop, long long id)
{
    aeTimeEvent *te = eventLoop->timeEventHead;
    while(te) {
        if (te->id == id) {
            te->id = AE_DELETED_EVENT_ID;
            return AE_OK;
        }
        te = te->next;
    }
    return AE_ERR;
}
