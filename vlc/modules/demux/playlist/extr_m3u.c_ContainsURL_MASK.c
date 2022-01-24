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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (char const*,char*,size_t const) ; 

__attribute__((used)) static bool FUNC2(const uint8_t *p_peek, size_t i_peek)
{
    const char *ps = (const char *)p_peek;
    const char *ps_end = (const char *) p_peek + i_peek;
    const size_t i_max = sizeof( "https://" );
    if( i_peek < i_max + 1 )
        return false;

    bool b_newline = true;
    while( ps + i_max + 1 < ps_end )
    {
        if( *ps <= 0 )
            return false;

        /* Goto next line */
        if( *ps == '\n' )
        {
            ps++;
            b_newline = true;
            continue;
        }

        /* One line starting with a URL is enough */
        if( b_newline )
        {
            const char *ps_match = FUNC1( ps, "://", i_max );
            if(ps_match)
            {
                switch(ps_match - ps)
                {
                    case 3:
                        if( !FUNC0( ps, "mms", 3 ) ||
                            !FUNC0( ps, "ftp", 3 ) )
                            return true;
                        break;
                    case 4:
                        if( !FUNC0( ps, "http", 4 ) ||
                            !FUNC0( ps, "rtsp", 4 ) ||
                            !FUNC0( ps, "ftps", 4 ) )
                            return true;
                        break;
                    case 5:
                        if( !FUNC0( ps, "https", 5 ) ||
                            !FUNC0( ps, "ftpes", 5 ) )
                            return true;
                    default:
                        break;
                }
            }

            /* Comments and blank lines are ignored */
            if( *ps != '#' && *ps != '\n' && *ps != '\r')
                return false;

            b_newline = false;
        }

        ps++;
    }
    return false;
}