
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; scalar_t__ p_meta; } ;
typedef TYPE_1__ input_item_t ;


 int ITEM_ART_NOTFOUND ;
 int vlc_meta_GetStatus (scalar_t__) ;
 scalar_t__ vlc_meta_New () ;
 int vlc_meta_SetStatus (scalar_t__,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_item_SetArtNotFound( input_item_t *p_i, bool b_not_found )
{
    vlc_mutex_lock( &p_i->lock );

    if( !p_i->p_meta )
        p_i->p_meta = vlc_meta_New();

    int status = vlc_meta_GetStatus(p_i->p_meta);

    if( b_not_found )
        status |= ITEM_ART_NOTFOUND;
    else
        status &= ~ITEM_ART_NOTFOUND;

    vlc_meta_SetStatus(p_i->p_meta, status);

    vlc_mutex_unlock( &p_i->lock );
}
