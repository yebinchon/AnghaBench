
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t calls_tail; int ** calls; } ;
typedef TYPE_1__ MSISession ;
typedef int MSICall ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static MSICall *get_call (MSISession *session, uint32_t friend_number)
{
    assert(session);

    if (session->calls == ((void*)0) || session->calls_tail < friend_number)
        return ((void*)0);

    return session->calls[friend_number];
}
