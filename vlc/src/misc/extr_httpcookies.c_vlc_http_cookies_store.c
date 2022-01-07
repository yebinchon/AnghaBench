
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lock; int cookies; } ;
typedef TYPE_1__ vlc_http_cookie_jar_t ;
struct TYPE_10__ {int psz_name; int psz_path; int psz_domain; } ;
typedef TYPE_2__ http_cookie_t ;


 int assert (int ) ;
 int cookie_destroy (TYPE_2__*) ;
 int cookie_domain_matches (TYPE_2__*,char const*) ;
 TYPE_2__* cookie_parse (char const*,char const*,char const*) ;
 int * strchr (int ,char) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ vlc_array_append (int *,TYPE_2__*) ;
 size_t vlc_array_count (int *) ;
 TYPE_2__* vlc_array_item_at_index (int *,size_t) ;
 int vlc_array_remove (int *,size_t) ;
 scalar_t__ vlc_ascii_strcasecmp (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool vlc_http_cookies_store(vlc_http_cookie_jar_t *p_jar, const char *cookies,
                            const char *host, const char *path)
{
    assert(host != ((void*)0));
    assert(path != ((void*)0));

    http_cookie_t *cookie = cookie_parse(cookies, host, path);
    if (cookie == ((void*)0))
        return 0;







    if (strchr(cookie->psz_domain, '.') == ((void*)0)
     || !cookie_domain_matches(cookie, host))
    {
        cookie_destroy(cookie);
        return 0;
    }

    vlc_mutex_lock( &p_jar->lock );

    for( size_t i = 0; i < vlc_array_count( &p_jar->cookies ); i++ )
    {
        http_cookie_t *iter = vlc_array_item_at_index( &p_jar->cookies, i );

        assert( iter->psz_name );
        assert( iter->psz_domain );
        assert( iter->psz_path );

        bool domains_match =
            vlc_ascii_strcasecmp( cookie->psz_domain, iter->psz_domain ) == 0;
        bool paths_match = strcmp( cookie->psz_path, iter->psz_path ) == 0;
        bool names_match = strcmp( cookie->psz_name, iter->psz_name ) == 0;
        if( domains_match && paths_match && names_match )
        {

            vlc_array_remove( &p_jar->cookies, i );
            cookie_destroy(iter);
            break;
        }
    }

    bool b_ret = (vlc_array_append( &p_jar->cookies, cookie ) == 0);
    if( !b_ret )
        cookie_destroy( cookie );

    vlc_mutex_unlock( &p_jar->lock );

    return b_ret;
}
