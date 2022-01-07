
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int b_first; int lock; } ;
typedef int picture_t ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int decoder_Notify (struct decoder_owner*,int ,int *) ;
 int on_thumbnail_ready ;
 int picture_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void ModuleThread_QueueThumbnail( decoder_t *p_dec, picture_t *p_pic )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    bool b_first;

    vlc_mutex_lock( &p_owner->lock );
    b_first = p_owner->b_first;
    p_owner->b_first = 0;
    vlc_mutex_unlock( &p_owner->lock );

    if( b_first )
        decoder_Notify(p_owner, on_thumbnail_ready, p_pic);
    picture_Release( p_pic );

}
