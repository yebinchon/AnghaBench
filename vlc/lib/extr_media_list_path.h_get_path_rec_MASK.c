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
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/ * libvlc_media_list_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static libvlc_media_list_path_t
FUNC9( const libvlc_media_list_path_t path, libvlc_media_list_t * p_current_mlist, libvlc_media_t * p_searched_md )
{
    int count = FUNC1( p_current_mlist );

    for( int i = 0; i < count; i++ )
    {
        libvlc_media_t * p_md = FUNC2( p_current_mlist, i );

        if( p_md == p_searched_md )
            return FUNC4( path, i ); /* Found! */

        libvlc_media_list_t * p_subitems = FUNC8( p_md );
        FUNC7( p_md );
        if( p_subitems )
        {
            libvlc_media_list_path_t new_path = FUNC4( path, i );
            FUNC3( p_subitems );
            libvlc_media_list_path_t ret = FUNC9( new_path, p_subitems, p_searched_md );
            FUNC6( p_subitems );
            FUNC0( new_path );
            FUNC5( p_subitems );
            if( ret )
                return ret; /* Found in sublist! */
        }
    }
    return NULL;
}