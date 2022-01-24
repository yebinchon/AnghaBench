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
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int MAX_PATH ; 
 char* FUNC4 (char const*,char const*,char const*,char const*,unsigned int*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static WCHAR *FUNC8( const WCHAR *arch, const WCHAR *name, const WCHAR *token,
                                       const WCHAR *version )
{
    static const WCHAR manifestsW[] = {'m','a','n','i','f','e','s','t','s','\\',0};
    static const WCHAR suffixW[] = {'.','m','a','n','i','f','e','s','t',0};
    WCHAR sxsdir[MAX_PATH], *ret, *fullname;
    unsigned int len;

    if (!(fullname = FUNC4( arch, name, token, version, &len ))) return NULL;
    len += FUNC5( sxsdir );
    len += FUNC0(manifestsW) - 1;
    len += FUNC0(suffixW) - 1;
    if (!(ret = FUNC2( FUNC1(), 0, (len + 1) * sizeof(WCHAR) )))
    {
        FUNC3( FUNC1(), 0, fullname );
        return NULL;
    }
    FUNC7( ret, sxsdir );
    FUNC6( ret, manifestsW );
    FUNC6( ret, fullname );
    FUNC6( ret, suffixW );

    FUNC3( FUNC1(), 0, fullname );
    return ret;
}