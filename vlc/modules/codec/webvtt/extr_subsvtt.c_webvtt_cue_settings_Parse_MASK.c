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
typedef  int /*<<< orphan*/  webvtt_cue_settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC5( webvtt_cue_settings_t *p_settings,
                                       char *p_str )
{
    char *p_save;
    char *psz_tuple;
    do
    {
        psz_tuple = FUNC3( p_str, " ", &p_save );
        p_str = NULL;
        if( psz_tuple )
        {
            const char *psz_split = FUNC1( psz_tuple, ':' );
            if( psz_split && psz_split[1] != 0 && psz_split != psz_tuple )
            {
                char *psz_key = FUNC2( psz_tuple, psz_split - psz_tuple );
                if( psz_key )
                {
                    FUNC4( p_settings, psz_key, psz_split + 1 );
                    FUNC0( psz_key );
                }
            }
        }
    } while( psz_tuple );
}