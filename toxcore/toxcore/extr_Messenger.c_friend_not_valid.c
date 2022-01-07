
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t int32_t ;
struct TYPE_5__ {unsigned int numfriends; TYPE_1__* friendlist; } ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_2__ Messenger ;



__attribute__((used)) static uint8_t friend_not_valid(const Messenger *m, int32_t friendnumber)
{
    if ((unsigned int)friendnumber < m->numfriends) {
        if (m->friendlist[friendnumber].status != 0) {
            return 0;
        }
    }

    return 1;
}
