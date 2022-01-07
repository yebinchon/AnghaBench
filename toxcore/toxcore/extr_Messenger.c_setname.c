
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ name_length; size_t numfriends; TYPE_1__* friendlist; int name; } ;
struct TYPE_4__ {scalar_t__ name_sent; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ MAX_NAME_LENGTH ;
 scalar_t__ memcmp (int const*,int ,scalar_t__) ;
 int memcpy (int ,int const*,scalar_t__) ;

int setname(Messenger *m, const uint8_t *name, uint16_t length)
{
    if (length > MAX_NAME_LENGTH)
        return -1;

    if (m->name_length == length && (length == 0 || memcmp(name, m->name, length) == 0))
        return 0;

    if (length)
        memcpy(m->name, name, length);

    m->name_length = length;
    uint32_t i;

    for (i = 0; i < m->numfriends; ++i)
        m->friendlist[i].name_sent = 0;

    return 0;
}
