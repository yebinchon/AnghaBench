
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int lock; scalar_t__ out_pool; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int picture_pool_Cancel (scalar_t__,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void DecoderThread_AbortPictures( decoder_t *p_dec, bool b_abort )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    vlc_mutex_lock( &p_owner->lock );
    if (p_owner->out_pool)
        picture_pool_Cancel( p_owner->out_pool, b_abort );
    vlc_mutex_unlock( &p_owner->lock );
}
