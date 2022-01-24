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
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int MAX_PATH ; 
 char const* backslashW ; 
 char* FUNC5 (char const*,char const*,char const*,unsigned int*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC10( const WCHAR *arch, const WCHAR *name, const WCHAR *token,
                                     const WCHAR *version )
{
    static const WCHAR policiesW[] = {'p','o','l','i','c','i','e','s','\\',0};
    static const WCHAR suffixW[] = {'.','p','o','l','i','c','y',0};
    WCHAR sxsdir[MAX_PATH], *ret, *fullname;
    unsigned int len;

    if (!(fullname = FUNC5( arch, name, token, &len ))) return NULL;
    len += FUNC6( sxsdir );
    len += FUNC0(policiesW) - 1;
    len += FUNC9( version );
    len += FUNC0(suffixW) - 1;
    if (!(ret = FUNC3( FUNC2(), 0, (len + 1) * sizeof(WCHAR) )))
    {
        FUNC4( FUNC2(), 0, fullname );
        return NULL;
    }
    FUNC8( ret, sxsdir );
    FUNC7( ret, policiesW );
    FUNC1( ret, NULL );
    FUNC7( ret, name );
    FUNC1( ret, NULL );
    FUNC7( ret, backslashW );
    FUNC7( ret, version );
    FUNC7( ret, suffixW );

    FUNC4( FUNC2(), 0, fullname );
    return ret;
}