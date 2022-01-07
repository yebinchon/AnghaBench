
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int cookies; } ;
typedef TYPE_1__ vlc_http_cookie_jar_t ;
struct TYPE_7__ {char* psz_name; char* psz_value; } ;
typedef TYPE_2__ http_cookie_t ;


 int asprintf (char**,char*,char*,char*,char*,char*) ;
 scalar_t__ cookie_should_be_sent (TYPE_2__ const*,int,char const*,char const*) ;
 int free (char*) ;
 size_t vlc_array_count (int *) ;
 TYPE_2__* vlc_array_item_at_index (int *,size_t) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *vlc_http_cookies_fetch(vlc_http_cookie_jar_t *p_jar, bool secure,
                             const char *host, const char *path)
{
    char *psz_cookiebuf = ((void*)0);

    vlc_mutex_lock( &p_jar->lock );

    for( size_t i = 0; i < vlc_array_count( &p_jar->cookies ); i++ )
    {
        const http_cookie_t * cookie = vlc_array_item_at_index( &p_jar->cookies, i );
        if (cookie_should_be_sent(cookie, secure, host, path))
        {
            char *psz_updated_buf = ((void*)0);
            if ( asprintf(&psz_updated_buf, "%s%s%s=%s",
                          psz_cookiebuf ? psz_cookiebuf : "",
                          psz_cookiebuf ? "; " : "",
                          cookie->psz_name ? cookie->psz_name : "",
                          cookie->psz_value ? cookie->psz_value : "") == -1 )
            {

                free( psz_cookiebuf );
                vlc_mutex_unlock( &p_jar->lock );
                return ((void*)0);
            }
            free( psz_cookiebuf );
            psz_cookiebuf = psz_updated_buf;
        }
    }

    vlc_mutex_unlock( &p_jar->lock );

    return psz_cookiebuf;
}
