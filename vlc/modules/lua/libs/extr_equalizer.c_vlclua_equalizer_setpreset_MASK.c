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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int NB_PRESETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * preset_list ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    int presetid = FUNC2( L, 1 );
    if( presetid >= NB_PRESETS || presetid < 0 )
        return 0;

    audio_output_t *p_aout = FUNC6(L);
    if( p_aout == NULL )
        return 0;

    int ret = 0;
    char *psz_af = FUNC4( p_aout, "audio-filter" );
    if( psz_af != NULL && FUNC3 ( psz_af, "equalizer" ) != NULL )
    {
        FUNC5( p_aout , "equalizer-preset" , preset_list[presetid] );
        ret = 1;
    }
    FUNC1( psz_af );
    FUNC0(p_aout);
    return ret;
}