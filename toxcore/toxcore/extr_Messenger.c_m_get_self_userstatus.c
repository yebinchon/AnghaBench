
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int userstatus; } ;
typedef TYPE_1__ Messenger ;



uint8_t m_get_self_userstatus(const Messenger *m)
{
    return m->userstatus;
}
