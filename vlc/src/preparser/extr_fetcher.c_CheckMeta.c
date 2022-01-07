
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int p_meta; } ;
typedef TYPE_1__ input_item_t ;


 int vlc_meta_Album ;
 int vlc_meta_Artist ;
 int vlc_meta_Get (int ,int ) ;
 int vlc_meta_Title ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int CheckMeta( input_item_t* item )
{
    vlc_mutex_lock( &item->lock );
    bool error = !item->p_meta ||
                 !vlc_meta_Get( item->p_meta, vlc_meta_Title ) ||
                 !vlc_meta_Get( item->p_meta, vlc_meta_Artist ) ||
                 !vlc_meta_Get( item->p_meta, vlc_meta_Album );
    vlc_mutex_unlock( &item->lock );
    return error;
}
