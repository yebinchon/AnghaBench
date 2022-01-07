
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_preparse_depth; int lock; } ;
typedef TYPE_1__ input_item_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool input_item_ShouldPreparseSubItems( input_item_t *p_item )
{
    bool b_ret;

    vlc_mutex_lock( &p_item->lock );
    b_ret = p_item->i_preparse_depth == -1 ? 1 : p_item->i_preparse_depth > 0;
    vlc_mutex_unlock( &p_item->lock );

    return b_ret;
}
