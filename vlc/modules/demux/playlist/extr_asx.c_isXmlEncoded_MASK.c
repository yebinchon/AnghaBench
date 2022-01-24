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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static bool FUNC6(const char* psz_str)
{
    FUNC0( psz_str != NULL );
    //look for special characters
    if( FUNC5(psz_str, "<>'\"") != NULL )
        return false;

    bool is_escaped = false;
    while( true )
    {
        const char* psz_amp = FUNC4(psz_str, '&');
        if( psz_amp == NULL )
            break;
        const char* psz_end = FUNC4(psz_amp, ';');
        if(  psz_end == NULL )
            return false;

        else if(psz_amp[1] == '#')
        {
            if( psz_amp[2] == 'x' )
            {
                const char* psz_ptr = &psz_amp[3];
                if( psz_ptr  ==  psz_end )
                    return false;
                for (  ; psz_ptr < psz_end; psz_ptr++)
                    if( ! FUNC3( *psz_ptr ) )
                        return false;
            }
            else
            {
                const char* psz_ptr = &(psz_amp[2]);
                if( psz_ptr ==  psz_end )
                    return false;
                for (  ; psz_ptr < psz_end; psz_ptr++)
                    if( ! FUNC2( *psz_ptr ) )
                        return false;
            }
        }
        else
        {
            const char* psz_ptr = &(psz_amp[1]);
            if( psz_ptr ==  psz_end )
                return false;
            for (  ; psz_ptr < psz_end; psz_ptr++)
                if( ! FUNC1( *psz_ptr ) )
                    return false;
        }
        is_escaped = true;
        psz_str = psz_end;
    }
    return is_escaped;
}