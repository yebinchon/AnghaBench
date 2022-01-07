
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct entry_item {int * p_item; int * p_entry; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int entry_item_list; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int netbios_ns_entry ;
typedef int input_item_t ;


 struct entry_item* calloc (int,int) ;
 int input_item_Hold (int *) ;
 int services_discovery_AddItem (TYPE_1__*,int *) ;
 int vlc_array_append_or_abort (int *,struct entry_item*) ;

__attribute__((used)) static void entry_item_append( services_discovery_t *p_sd,
                               netbios_ns_entry *p_entry,
                               input_item_t *p_item )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    struct entry_item *p_entry_item = calloc(1, sizeof(struct entry_item));

    if( !p_entry_item )
        return;
    p_entry_item->p_entry = p_entry;
    p_entry_item->p_item = p_item;
    input_item_Hold( p_item );
    vlc_array_append_or_abort( &p_sys->entry_item_list, p_entry_item );
    services_discovery_AddItem( p_sd, p_item );
}
