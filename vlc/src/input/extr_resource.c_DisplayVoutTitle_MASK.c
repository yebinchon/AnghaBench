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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {int /*<<< orphan*/ * p_input; } ;
typedef  TYPE_1__ input_resource_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8( input_resource_t *p_resource,
                              vout_thread_t *p_vout )
{
    if( p_resource->p_input == NULL )
        return;

    /* TODO display the title only one time for the same input ? */

    input_item_t *p_item = FUNC2( p_resource->p_input );

    char *psz_nowplaying = FUNC5( p_item );
    if( psz_nowplaying && *psz_nowplaying )
    {
        FUNC7( p_vout, psz_nowplaying );
    }
    else
    {
        char *psz_artist = FUNC3( p_item );
        char *psz_name = FUNC6( p_item );

        if( !psz_name || *psz_name == '\0' )
        {
            FUNC1( psz_name );
            psz_name = FUNC4( p_item );
        }
        if( psz_artist && *psz_artist )
        {
            char *psz_string;
            if( FUNC0( &psz_string, "%s - %s", psz_name, psz_artist ) != -1 )
            {
                FUNC7( p_vout, psz_string );
                FUNC1( psz_string );
            }
        }
        else if( psz_name )
        {
            FUNC7( p_vout, psz_name );
        }
        FUNC1( psz_name );
        FUNC1( psz_artist );
    }
    FUNC1( psz_nowplaying );
}