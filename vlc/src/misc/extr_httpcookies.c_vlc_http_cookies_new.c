
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int cookies; } ;
typedef TYPE_1__ vlc_http_cookie_jar_t ;


 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_array_init (int *) ;
 int vlc_mutex_init (int *) ;

vlc_http_cookie_jar_t * vlc_http_cookies_new(void)
{
    vlc_http_cookie_jar_t * jar = malloc( sizeof( vlc_http_cookie_jar_t ) );
    if ( unlikely(jar == ((void*)0)) )
        return ((void*)0);

    vlc_array_init( &jar->cookies );
    vlc_mutex_init( &jar->lock );

    return jar;
}
