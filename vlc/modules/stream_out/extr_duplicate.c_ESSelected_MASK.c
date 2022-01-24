#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ i_cat; int /*<<< orphan*/  i_group; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_1__ es_format_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SPU_ES ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8( const es_format_t *fmt, char *psz_select )
{
    char  *psz_dup;
    char  *psz;

    /* We have tri-state variable : no tested (-1), failed(0), succeed(1) */
    int i_cat = -1;
    int i_es  = -1;
    int i_prgm= -1;

    /* If empty all es are selected */
    if( psz_select == NULL || *psz_select == '\0' )
    {
        return true;
    }
    psz_dup = FUNC5( psz_select );
    if( !psz_dup )
        return false;
    psz = psz_dup;

    /* If non empty, parse the selection:
     * We have selection[,selection[,..]] where following selection are recognized:
     *      (no(-))audio
     *      (no(-))spu
     *      (no(-))video
     *      (no(-))es=[start]-[end] or es=num
     *      (no(-))prgm=[start]-[end] or prgm=num (program works too)
     *      if a negative test failed we exit directly
     */
    while( psz && *psz )
    {
        char *p;

        /* Skip space */
        while( *psz == ' ' || *psz == '\t' ) psz++;

        /* Search end */
        p = FUNC3( psz, ',' );
        if( p == psz )
        {
            /* Empty */
            psz = p + 1;
            continue;
        }
        if( p )
        {
            *p++ = '\0';
        }

        if( !FUNC7( psz, "no-audio", FUNC6( "no-audio" ) ) ||
            !FUNC7( psz, "noaudio", FUNC6( "noaudio" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat != AUDIO_ES ? 1 : 0;
            }
        }
        else if( !FUNC7( psz, "no-video", FUNC6( "no-video" ) ) ||
                 !FUNC7( psz, "novideo", FUNC6( "novideo" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat != VIDEO_ES ? 1 : 0;
            }
        }
        else if( !FUNC7( psz, "no-spu", FUNC6( "no-spu" ) ) ||
                 !FUNC7( psz, "nospu", FUNC6( "nospu" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat != SPU_ES ? 1 : 0;
            }
        }
        else if( !FUNC7( psz, "audio", FUNC6( "audio" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat == AUDIO_ES ? 1 : 0;
            }
        }
        else if( !FUNC7( psz, "video", FUNC6( "video" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat == VIDEO_ES ? 1 : 0;
            }
        }
        else if( !FUNC7( psz, "spu", FUNC6( "spu" ) ) )
        {
            if( i_cat == -1 )
            {
                i_cat = fmt->i_cat == SPU_ES ? 1 : 0;
            }
        }
        else if( FUNC3( psz, '=' ) != NULL )
        {
            char *psz_arg = FUNC3( psz, '=' );
            *psz_arg++ = '\0';

            if( !FUNC4( psz, "no-es" ) || !FUNC4( psz, "noes" ) )
            {
                if( i_es == -1 )
                {
                    i_es = FUNC0( psz_arg, fmt->i_id ) ? 0 : -1;
                }
            }
            else if( !FUNC4( psz, "es" ) )
            {
                if( i_es == -1 )
                {
                    i_es = FUNC0( psz_arg, fmt->i_id) ? 1 : -1;
                }
            }
            else if( !FUNC4( psz, "no-prgm" ) || !FUNC4( psz, "noprgm" ) ||
                      !FUNC4( psz, "no-program" ) || !FUNC4( psz, "noprogram" ) )
            {
                if( fmt->i_group >= 0 && i_prgm == -1 )
                {
                    i_prgm = FUNC0( psz_arg, fmt->i_group ) ? 0 : -1;
                }
            }
            else if( !FUNC4( psz, "prgm" ) || !FUNC4( psz, "program" ) )
            {
                if( fmt->i_group >= 0 && i_prgm == -1 )
                {
                    i_prgm = FUNC0( psz_arg, fmt->i_group ) ? 1 : -1;
                }
            }
        }
        else
        {
            FUNC1( stderr, "unknown args (%s)\n", psz );
        }
        /* Next */
        psz = p;
    }

    FUNC2( psz_dup );

    if( i_cat == 1 || i_es == 1 || i_prgm == 1 )
    {
        return true;
    }
    return false;
}