
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ friendrequest_lastsent; int friendrequest_timeout; } ;
struct TYPE_5__ {TYPE_2__* friendlist; } ;
typedef TYPE_1__ Messenger ;
typedef TYPE_2__ Friend ;


 int FRIEND_ADDED ;
 int set_friend_status (TYPE_1__*,size_t,int ) ;

__attribute__((used)) static void check_friend_request_timed_out(Messenger *m, uint32_t i, uint64_t t)
{
    Friend *f = &m->friendlist[i];

    if (f->friendrequest_lastsent + f->friendrequest_timeout < t) {
        set_friend_status(m, i, FRIEND_ADDED);



        f->friendrequest_timeout *= 2;
    }
}
