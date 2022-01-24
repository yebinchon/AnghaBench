#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cookies; } ;
typedef  TYPE_1__ vlc_http_cookie_jar_t ;
struct TYPE_7__ {char* psz_name; char* psz_value; } ;
typedef  TYPE_2__ http_cookie_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

char *FUNC7(vlc_http_cookie_jar_t *p_jar, bool secure,
                             const char *host, const char *path)
{
    char *psz_cookiebuf = NULL;

    FUNC5( &p_jar->lock );

    for( size_t i = 0; i < FUNC3( &p_jar->cookies ); i++ )
    {
        const http_cookie_t * cookie = FUNC4( &p_jar->cookies, i );
        if (FUNC1(cookie, secure, host, path))
        {
            char *psz_updated_buf = NULL;
            if ( FUNC0(&psz_updated_buf, "%s%s%s=%s",
                          psz_cookiebuf ? psz_cookiebuf : "",
                          psz_cookiebuf ? "; " : "",
                          cookie->psz_name ? cookie->psz_name : "",
                          cookie->psz_value ? cookie->psz_value : "") == -1 )
            {
                // TODO: report error
                FUNC2( psz_cookiebuf );
                FUNC6( &p_jar->lock );
                return NULL;
            }
            FUNC2( psz_cookiebuf );
            psz_cookiebuf = psz_updated_buf;
        }
    }

    FUNC6( &p_jar->lock );

    return psz_cookiebuf;
}