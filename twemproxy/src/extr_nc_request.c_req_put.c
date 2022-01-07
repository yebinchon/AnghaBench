
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int request; struct msg* peer; } ;


 int ASSERT (int) ;
 int msg_put (struct msg*) ;
 int msg_tmo_delete (struct msg*) ;
 int req_log (struct msg*) ;
 int rsp_put (struct msg*) ;

void
req_put(struct msg *msg)
{
    struct msg *pmsg;

    ASSERT(msg->request);

    req_log(msg);

    pmsg = msg->peer;
    if (pmsg != ((void*)0)) {
        ASSERT(!pmsg->request && pmsg->peer == msg);
        msg->peer = ((void*)0);
        pmsg->peer = ((void*)0);
        rsp_put(pmsg);
    }

    msg_tmo_delete(msg);

    msg_put(msg);
}
