
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_source; } ;
typedef TYPE_1__ subsdelay_heap_entry_t ;


 int SubpicDestroyClone (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void SubsdelayEntryDestroy( subsdelay_heap_entry_t *p_entry )
{
    SubpicDestroyClone( p_entry->p_source );
    free( p_entry );
}
