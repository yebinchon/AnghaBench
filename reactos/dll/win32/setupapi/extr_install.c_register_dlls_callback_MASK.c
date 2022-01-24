#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct register_dll_info {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int MAX_INF_STRING_LENGTH ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC8 (struct register_dll_info*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static BOOL FUNC11( HINF hinf, PCWSTR field, void *arg )
{
    struct register_dll_info *info = arg;
    INFCONTEXT context;
    BOOL ret = TRUE;
    BOOL ok = FUNC4( hinf, field, NULL, &context );

    for (; ok; ok = FUNC5( &context, &context ))
    {
        WCHAR *path, *args, *p;
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        INT flags, timeout;

        /* get directory */
        if (!(path = FUNC3( &context ))) continue;

        /* get dll name */
        if (!FUNC7( &context, 3, buffer, sizeof(buffer)/sizeof(WCHAR), NULL ))
            goto done;
        if (!(p = FUNC2( FUNC0(), 0, path,
                               (FUNC10(path) + FUNC10(buffer) + 2) * sizeof(WCHAR) ))) goto done;
        path = p;
        p += FUNC10(p);
        if (p == path || p[-1] != '\\') *p++ = '\\';
        FUNC9( p, buffer );

        /* get flags */
        if (!FUNC6( &context, 4, &flags )) flags = 0;

        /* get timeout */
        if (!FUNC6( &context, 5, &timeout )) timeout = 60;

        /* get command line */
        args = NULL;
        if (FUNC7( &context, 6, buffer, sizeof(buffer)/sizeof(WCHAR), NULL ))
            args = buffer;

        ret = FUNC8( info, path, flags, timeout, args );

    done:
        FUNC1( FUNC0(), 0, path );
        if (!ret) break;
    }
    return ret;
}