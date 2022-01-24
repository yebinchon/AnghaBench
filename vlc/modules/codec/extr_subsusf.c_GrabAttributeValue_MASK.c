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
 char* FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char*,int) ; 

__attribute__((used)) static char *FUNC5( const char *psz_attribute,
                                 const char *psz_tag_start )
{
    if( psz_attribute && psz_tag_start )
    {
        char *psz_tag_end = FUNC1( psz_tag_start, '>' );
        char *psz_found   = FUNC0( psz_tag_start, psz_attribute );

        if( psz_found )
        {
            psz_found += FUNC3( psz_attribute );

            if(( *(psz_found++) == '=' ) &&
               ( *(psz_found++) == '\"' ))
            {
                if( psz_found < psz_tag_end )
                {
                    int   i_len = FUNC2( psz_found, "\"" );
                    return FUNC4( psz_found, i_len );
                }
            }
        }
    }
    return NULL;
}