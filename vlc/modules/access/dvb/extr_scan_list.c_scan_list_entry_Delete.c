
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_channel; } ;
typedef TYPE_1__ scan_list_entry_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void scan_list_entry_Delete( scan_list_entry_t *p_entry )
{
    free( p_entry->psz_channel );
    free( p_entry );
}
