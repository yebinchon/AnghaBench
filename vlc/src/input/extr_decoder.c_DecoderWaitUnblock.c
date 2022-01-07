
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int lock; int wait_request; int b_has_data; int b_waiting; } ;


 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static void DecoderWaitUnblock( struct decoder_owner *p_owner )
{
    vlc_mutex_assert( &p_owner->lock );

    for( ;; )
    {
        if( !p_owner->b_waiting || !p_owner->b_has_data )
            break;
        vlc_cond_wait( &p_owner->wait_request, &p_owner->lock );
    }
}
