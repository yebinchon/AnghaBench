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
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const* const) ; 
 int /*<<< orphan*/ * FUNC3 (char const* const,char*) ; 
 char* FUNC4 (char const* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( libvlc_int_t *p_vlc, unsigned n,
                          const char *const args[] )
{
    while( n > 0 )
    {
        /* Count the input options */
        unsigned i_options = 0;

        while( args[--n][0] == ':' )
        {
            i_options++;
            if( n == 0 )
            {
                FUNC2( p_vlc, "options %s without item", args[n] );
                return; /* syntax!? */
            }
        }

        char *mrl = NULL;
        if( FUNC3( args[n], "://" ) == NULL )
        {
            mrl = FUNC4( args[n], NULL );
            if( !mrl )
                continue;
        }

        FUNC1( p_vlc, (mrl != NULL) ? mrl : args[n], i_options,
                         ( i_options ? &args[n + 1] : NULL ),
                         VLC_INPUT_OPTION_TRUSTED );
        FUNC0( mrl );
    }
}