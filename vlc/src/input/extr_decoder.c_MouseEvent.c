
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mouse_t ;
struct decoder_owner {int mouse_lock; int mouse_opaque; int (* mouse_event ) (int const*,int ) ;} ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int stub1 (int const*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void MouseEvent( const vlc_mouse_t *newmouse, void *user_data )
{
    decoder_t *dec = user_data;
    struct decoder_owner *owner = dec_get_owner( dec );

    vlc_mutex_lock( &owner->mouse_lock );
    if( owner->mouse_event )
        owner->mouse_event( newmouse, owner->mouse_opaque);
    vlc_mutex_unlock( &owner->mouse_lock );
}
