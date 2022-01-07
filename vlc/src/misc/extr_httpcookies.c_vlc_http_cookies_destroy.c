
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int cookies; } ;
typedef TYPE_1__ vlc_http_cookie_jar_t ;


 int cookie_destroy (int ) ;
 int free (TYPE_1__*) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 int vlc_array_item_at_index (int *,size_t) ;
 int vlc_mutex_destroy (int *) ;

void vlc_http_cookies_destroy( vlc_http_cookie_jar_t * p_jar )
{
    if ( !p_jar )
        return;

    for( size_t i = 0; i < vlc_array_count( &p_jar->cookies ); i++ )
        cookie_destroy( vlc_array_item_at_index( &p_jar->cookies, i ) );

    vlc_array_clear( &p_jar->cookies );
    vlc_mutex_destroy( &p_jar->lock );

    free( p_jar );
}
