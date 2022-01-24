#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cookies; } ;
typedef  TYPE_1__ vlc_http_cookie_jar_t ;
struct TYPE_10__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  psz_path; int /*<<< orphan*/  psz_domain; } ;
typedef  TYPE_2__ http_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 TYPE_2__* FUNC3 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

bool FUNC13(vlc_http_cookie_jar_t *p_jar, const char *cookies,
                            const char *host, const char *path)
{
    FUNC0(host != NULL);
    FUNC0(path != NULL);

    http_cookie_t *cookie = FUNC3(cookies, host, path);
    if (cookie == NULL)
        return false;

    /* Check if a cookie from host should be added to the cookie jar */
    // FIXME: should check if domain is one of "public suffixes" at
    // http://publicsuffix.org/. The purpose of this check is to
    // prevent a host from setting a "too wide" cookie, for example
    // "example.com" should not be able to set a cookie for "com".
    // The current implementation prevents all top-level domains.
    if (FUNC4(cookie->psz_domain, '.') == NULL
     || !FUNC2(cookie, host))
    {
        FUNC1(cookie);
        return false;
    }

    FUNC11( &p_jar->lock );

    for( size_t i = 0; i < FUNC7( &p_jar->cookies ); i++ )
    {
        http_cookie_t *iter = FUNC8( &p_jar->cookies, i );

        FUNC0( iter->psz_name );
        FUNC0( iter->psz_domain );
        FUNC0( iter->psz_path );

        bool domains_match =
            FUNC10( cookie->psz_domain, iter->psz_domain ) == 0;
        bool paths_match = FUNC5( cookie->psz_path, iter->psz_path ) == 0;
        bool names_match = FUNC5( cookie->psz_name, iter->psz_name ) == 0;
        if( domains_match && paths_match && names_match )
        {
            /* Remove previous value for this cookie */
            FUNC9( &p_jar->cookies, i );
            FUNC1(iter);
            break;
        }
    }

    bool b_ret = (FUNC6( &p_jar->cookies, cookie ) == 0);
    if( !b_ret )
        FUNC1( cookie );

    FUNC12( &p_jar->lock );

    return b_ret;
}