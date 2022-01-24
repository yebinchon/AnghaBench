#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* psz_domain; scalar_t__ b_host_only; } ;
typedef  TYPE_1__ http_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*) ; 
 size_t FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC4( const http_cookie_t *cookie,
                                   const char *host )
{
    // TODO: should convert domain names to punycode before comparing

    if (host == NULL)
        return false;
    if ( FUNC3(cookie->psz_domain, host) == 0 )
        return true;
    else if ( cookie->b_host_only )
        return false;

    size_t host_len = FUNC1(host);
    size_t cookie_domain_len = FUNC1(cookie->psz_domain);
    bool is_suffix = false, has_dot_before_suffix = false;

    if( host_len > cookie_domain_len )
    {
        size_t i = host_len - cookie_domain_len;

        is_suffix = FUNC3( &host[i], cookie->psz_domain ) == 0;
        has_dot_before_suffix = host[i-1] == '.';
    }

    bool host_is_ipv4 = FUNC2(host, "0123456789.") == host_len;
    bool host_is_ipv6 = FUNC0(host, ':') != NULL;
    return is_suffix && has_dot_before_suffix &&
        !( host_is_ipv4 || host_is_ipv6 );
}