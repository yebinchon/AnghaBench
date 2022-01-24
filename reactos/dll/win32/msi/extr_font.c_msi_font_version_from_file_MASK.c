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
 int /*<<< orphan*/  NAME_ID_VERSION ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int,int) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char const*) ; 

WCHAR *FUNC8( const WCHAR *filename )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','0','.','0',0};
    WCHAR *version, *p, *q, *ret = NULL;

    if ((version = FUNC2( filename, NAME_ID_VERSION )))
    {
        int len, major = 0, minor = 0;
        if ((p = FUNC6( version, ';' ))) *p = 0;
        p = version;
        while (*p && !FUNC1( *p )) p++;
        if ((q = FUNC6( p, '.' )))
        {
            major = FUNC0( p );
            p = ++q;
            while (*q && FUNC1( *q )) q++;
            if (!*q || *q == ' ') minor = FUNC0( p );
            else major = 0;
        }
        len = FUNC7( fmtW ) + 20;
        ret = FUNC3( len * sizeof(WCHAR) );
        FUNC5( ret, fmtW, major, minor );
        FUNC4( version );
    }
    return ret;
}