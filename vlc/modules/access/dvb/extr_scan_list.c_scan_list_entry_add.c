
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_1__ scan_list_entry_t ;


 int scan_list_entry_Delete (TYPE_1__*) ;
 scalar_t__ scan_list_entry_validate (TYPE_1__*) ;

__attribute__((used)) static bool scan_list_entry_add( scan_list_entry_t ***ppp_last, scan_list_entry_t *p_entry )
{
    if( scan_list_entry_validate( p_entry ) )
    {
         **ppp_last = p_entry;
         *ppp_last = &p_entry->p_next;
        return 1;
    }

    scan_list_entry_Delete( p_entry );
    return 0;
}
