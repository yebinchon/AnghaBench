
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next_in_directory; int extension_on_cd; int name_on_cd; TYPE_1__* parent; } ;
struct TYPE_4__ {TYPE_2__* first_record; } ;
typedef TYPE_2__* PDIR_RECORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcasecmp (int ,int ) ;

__attribute__((used)) static BOOL cdname_exists(PDIR_RECORD d)
{
    PDIR_RECORD p = d->parent->first_record;
    while (p)
    {
        if ( p != d
            && !strcasecmp(p->name_on_cd, d->name_on_cd)
            && !strcasecmp(p->extension_on_cd, d->extension_on_cd) )
            return TRUE;
        p = p->next_in_directory;
    }
    return FALSE;
}
