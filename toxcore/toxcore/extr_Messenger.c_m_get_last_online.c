
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {int last_seen_time; } ;
typedef TYPE_2__ Messenger ;


 int UINT64_MAX ;
 scalar_t__ friend_not_valid (TYPE_2__ const*,size_t) ;

uint64_t m_get_last_online(const Messenger *m, int32_t friendnumber)
{
    if (friend_not_valid(m, friendnumber))
        return UINT64_MAX;

    return m->friendlist[friendnumber].last_seen_time;
}
