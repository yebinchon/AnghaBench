
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_domain; scalar_t__ b_host_only; } ;
typedef TYPE_1__ http_cookie_t ;


 int * strchr (char const*,char) ;
 size_t strlen (char const*) ;
 size_t strspn (char const*,char*) ;
 scalar_t__ vlc_ascii_strcasecmp (char const*,char const*) ;

__attribute__((used)) static bool cookie_domain_matches( const http_cookie_t *cookie,
                                   const char *host )
{


    if (host == ((void*)0))
        return 0;
    if ( vlc_ascii_strcasecmp(cookie->psz_domain, host) == 0 )
        return 1;
    else if ( cookie->b_host_only )
        return 0;

    size_t host_len = strlen(host);
    size_t cookie_domain_len = strlen(cookie->psz_domain);
    bool is_suffix = 0, has_dot_before_suffix = 0;

    if( host_len > cookie_domain_len )
    {
        size_t i = host_len - cookie_domain_len;

        is_suffix = vlc_ascii_strcasecmp( &host[i], cookie->psz_domain ) == 0;
        has_dot_before_suffix = host[i-1] == '.';
    }

    bool host_is_ipv4 = strspn(host, "0123456789.") == host_len;
    bool host_is_ipv6 = strchr(host, ':') != ((void*)0);
    return is_suffix && has_dot_before_suffix &&
        !( host_is_ipv4 || host_is_ipv6 );
}
