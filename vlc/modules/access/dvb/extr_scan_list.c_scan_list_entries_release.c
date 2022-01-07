
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ scan_list_entry_t ;


 int scan_list_entry_Delete (TYPE_1__*) ;

void scan_list_entries_release( scan_list_entry_t *p_list )
{
    while( p_list )
    {
        scan_list_entry_t *p_next = p_list->p_next;
        scan_list_entry_Delete( p_list );
        p_list = p_next;
    }
}
