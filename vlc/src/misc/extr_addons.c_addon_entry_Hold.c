
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int addon_entry_t ;
struct TYPE_2__ {int rc; } ;
typedef TYPE_1__ addon_entry_owner_t ;


 int vlc_atomic_rc_inc (int *) ;

addon_entry_t * addon_entry_Hold( addon_entry_t * p_entry )
{
    addon_entry_owner_t *owner = (addon_entry_owner_t *) p_entry;

    vlc_atomic_rc_inc( &owner->rc );
    return p_entry;
}
