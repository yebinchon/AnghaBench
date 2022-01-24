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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (char const*,char*) ; 

__attribute__((used)) static char *FUNC6( const char *psz_header, const char *psz_param )
{
    char psz_what[FUNC3(psz_param)+3];
    FUNC0( psz_what, "%s=\"", psz_param );
    psz_header = FUNC5( psz_header, psz_what );
    if ( psz_header )
    {
        const char *psz_end;
        psz_header += FUNC3( psz_what );
        psz_end = FUNC1( psz_header, '"' );
        if ( !psz_end ) /* Invalid since we should have a closing quote */
            return FUNC2( psz_header );
        return FUNC4( psz_header, psz_end - psz_header );
    }
    else
    {
        return NULL;
    }
}