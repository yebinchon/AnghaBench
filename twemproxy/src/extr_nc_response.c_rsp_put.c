
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int * peer; int request; } ;


 int ASSERT (int) ;
 int msg_put (struct msg*) ;

void
rsp_put(struct msg *msg)
{
    ASSERT(!msg->request);
    ASSERT(msg->peer == ((void*)0));
    msg_put(msg);
}
