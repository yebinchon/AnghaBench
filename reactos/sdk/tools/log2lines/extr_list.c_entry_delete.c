
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef TYPE_1__* PLIST_MEMBER ;


 int free (TYPE_1__*) ;

PLIST_MEMBER
entry_delete(PLIST_MEMBER pentry)
{
    if (!pentry)
        return ((void*)0);
    if (pentry->buf)
        free(pentry->buf);
    free(pentry);
    return ((void*)0);
}
