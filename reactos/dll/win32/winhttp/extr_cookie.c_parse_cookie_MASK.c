#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* value; scalar_t__* name; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ cookie_t ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static cookie_t *FUNC8( const WCHAR *string )
{
    cookie_t *cookie;
    const WCHAR *p;
    int len;

    if (!(p = FUNC6( string, '=' ))) p = string + FUNC7( string );
    len = p - string;
    while (len && string[len - 1] == ' ') len--;
    if (!len) return NULL;

    if (!(cookie = FUNC2( sizeof(cookie_t) ))) return NULL;
    FUNC4( &cookie->entry );

    if (!(cookie->name = FUNC1( (len + 1) * sizeof(WCHAR) )))
    {
        FUNC3( cookie );
        return NULL;
    }
    FUNC5( cookie->name, string, len * sizeof(WCHAR) );
    cookie->name[len] = 0;

    if (*p++ == '=')
    {
        while (*p == ' ') p++;
        len = FUNC7( p );
        while (len && p[len - 1] == ' ') len--;

        if (!(cookie->value = FUNC1( (len + 1) * sizeof(WCHAR) )))
        {
            FUNC0( cookie );
            return NULL;
        }
        FUNC5( cookie->value, p, len * sizeof(WCHAR) );
        cookie->value[len] = 0;
    }
    return cookie;
}