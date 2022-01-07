
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t int32_t ;
struct TYPE_5__ {size_t numfriends; TYPE_1__* friendlist; } ;
struct TYPE_4__ {scalar_t__ status; int real_pk; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ id_equal (int const*,int ) ;

int32_t getfriend_id(const Messenger *m, const uint8_t *real_pk)
{
    uint32_t i;

    for (i = 0; i < m->numfriends; ++i) {
        if (m->friendlist[i].status > 0)
            if (id_equal(real_pk, m->friendlist[i].real_pk))
                return i;
    }

    return -1;
}
