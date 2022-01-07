
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; scalar_t__ magic; } ;
typedef scalar_t__ DWORD ;


 TYPE_1__* cookies ;
 unsigned int id_last ;

DWORD enumerate_Cookie(DWORD magic, DWORD *index)
{
    unsigned int i;
    for (i = *index; i < id_last; i++)
        if (cookies[i].id != 0 && cookies[i].magic == magic)
        {
            *index = (i+1);
            return cookies[i].id;
        }
    return 0x0;
}
