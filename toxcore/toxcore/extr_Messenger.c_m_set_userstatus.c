
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {scalar_t__ userstatus; size_t numfriends; TYPE_1__* friendlist; } ;
struct TYPE_4__ {scalar_t__ userstatus_sent; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ USERSTATUS_INVALID ;

int m_set_userstatus(Messenger *m, uint8_t status)
{
    if (status >= USERSTATUS_INVALID)
        return -1;

    if (m->userstatus == status)
        return 0;

    m->userstatus = status;
    uint32_t i;

    for (i = 0; i < m->numfriends; ++i)
        m->friendlist[i].userstatus_sent = 0;

    return 0;
}
