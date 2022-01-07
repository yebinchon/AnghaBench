
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int files; int lock; } ;
typedef TYPE_1__ addon_entry_t ;
struct TYPE_6__ {TYPE_1__ entry; int rc; } ;
typedef TYPE_2__ addon_entry_owner_t ;


 int ARRAY_INIT (int ) ;
 TYPE_2__* calloc (int,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_mutex_init (int *) ;

addon_entry_t * addon_entry_New(void)
{
    addon_entry_owner_t *owner = calloc( 1, sizeof(addon_entry_owner_t) );
    if( unlikely(owner == ((void*)0)) )
        return ((void*)0);

    vlc_atomic_rc_init( &owner->rc );

    addon_entry_t *p_entry = &owner->entry;
    vlc_mutex_init( &p_entry->lock );
    ARRAY_INIT( p_entry->files );
    return p_entry;
}
