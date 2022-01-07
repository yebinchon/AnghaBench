
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_item_t ;
struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ input_item_owner_t ;


 TYPE_1__* item_owner (int *) ;
 int vlc_atomic_rc_inc (int *) ;

input_item_t *input_item_Hold( input_item_t *p_item )
{
    input_item_owner_t *owner = item_owner(p_item);

    vlc_atomic_rc_inc( &owner->rc );
    return p_item;
}
