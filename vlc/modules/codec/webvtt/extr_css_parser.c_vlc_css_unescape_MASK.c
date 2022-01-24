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
 int /*<<< orphan*/  FUNC0 (unsigned int,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,char) ; 
 unsigned int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 

void FUNC4( char *psz )
{
    if( !psz )
        return;
    char *r = psz;
    char *w = psz;

    while( *r )
    {
        if( *r == '\\' )
        {
            r++;
            /* newlines */
            if( *r == 0 )
            {
                break;
            }
            else if( FUNC2( "nfr", *r ) )
            {
                switch( r[0] )
                {
                    case 'n':
                        *w++ = '\n';
                        r++;
                        break;
                    case 'r':
                        *w++ = '\r';
                        if( r[1] && r[1] == 'n' )
                        {
                            *w++ = '\n';
                            r++;
                        }
                        r++;
                        break;
                    case 'f':
                        *w++ = '\f';
                        r++;
                        break;
                }
            }
            else if( FUNC1( *r ) )
            {
                const char *p_start = r;
                int i;
                for( i=0; i<6 && *r && FUNC1( *r ); i++ )
                    r++;
                const char backup = *r;
                *r = 0;
                unsigned i_value = FUNC3( p_start, NULL, 16 );
                *r = backup;
                if( i < 6 && *r && *r == ' ' )
                    r++;
                w += FUNC0( i_value, w );
            }
        }
        else
        {
            *w++ = *r++;
        }
    }

    *w = 0;
}