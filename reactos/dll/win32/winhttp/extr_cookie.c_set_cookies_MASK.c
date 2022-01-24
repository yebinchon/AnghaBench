#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct attr {char* value; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  session_t ;
struct TYPE_5__ {int /*<<< orphan*/  path; TYPE_1__* connect; } ;
typedef  TYPE_2__ request_t ;
typedef  int /*<<< orphan*/  cookie_t ;
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  servername; int /*<<< orphan*/ * session; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct attr* FUNC7 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*) ; 
 char* FUNC13 (char*,char) ; 

BOOL FUNC14( request_t *request, const WCHAR *cookies )
{
    static const WCHAR pathW[] = {'p','a','t','h',0};
    static const WCHAR domainW[] = {'d','o','m','a','i','n',0};
    BOOL ret = FALSE;
    WCHAR *buffer, *p;
    WCHAR *cookie_domain = NULL, *cookie_path = NULL;
    struct attr *attr, *domain = NULL, *path = NULL;
    session_t *session = request->connect->session;
    cookie_t *cookie;
    int len, used;

    len = FUNC12( cookies );
    if (!(buffer = FUNC5( (len + 1) * sizeof(WCHAR) ))) return FALSE;
    FUNC10( buffer, cookies );

    p = buffer;
    while (*p && *p != ';') p++;
    if (*p == ';') *p++ = 0;
    if (!(cookie = FUNC8( buffer )))
    {
        FUNC6( buffer );
        return FALSE;
    }
    len = FUNC12( p );
    while (len && (attr = FUNC7( p, &used )))
    {
        if (!FUNC9( attr->name, domainW ))
        {
            domain = attr;
            cookie_domain = attr->value;
        }
        else if (!FUNC9( attr->name, pathW ))
        {
            path = attr;
            cookie_path = attr->value;
        }
        else
        {
            FUNC0( "unhandled attribute %s\n", FUNC2(attr->name) );
            FUNC3( attr );
        }
        len -= used;
        p += used;
    }
    if (!cookie_domain && !(cookie_domain = FUNC11( request->connect->servername ))) goto end;
    if (!cookie_path && !(cookie_path = FUNC11( request->path ))) goto end;

    if ((p = FUNC13( cookie_path, '/' )) && p != cookie_path) *p = 0;
    ret = FUNC1( session, cookie, cookie_domain, cookie_path );

end:
    if (!ret) FUNC4( cookie );
    if (domain) FUNC3( domain );
    else FUNC6( cookie_domain );
    if (path) FUNC3( path );
    else FUNC6( cookie_path );
    FUNC6( buffer );
    return ret;
}