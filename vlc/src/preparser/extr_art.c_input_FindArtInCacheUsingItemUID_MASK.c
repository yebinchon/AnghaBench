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
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 

int FUNC8( input_item_t *p_item )
{
    char *uid = FUNC5( p_item, "uid", "md5" );
    if ( ! *uid )
    {
        FUNC4( uid );
        return VLC_EGENERIC;
    }

    /* we have an input item uid set */
    bool b_done = false;
    char *psz_byuiddir = FUNC0( uid );
    char *psz_byuidfile = FUNC1( psz_byuiddir, "arturl" );
    FUNC4( psz_byuiddir );
    if( psz_byuidfile )
    {
        FILE *fd = FUNC7( psz_byuidfile, "rb" );
        if ( fd )
        {
            char sz_cachefile[2049];
            /* read the cache hash url */
            if ( FUNC3( sz_cachefile, 2048, fd ) != NULL )
            {
                FUNC6( p_item, sz_cachefile );
                b_done = true;
            }
            FUNC2( fd );
        }
        FUNC4( psz_byuidfile );
    }
    FUNC4( uid );
    if ( b_done ) return VLC_SUCCESS;

    return VLC_EGENERIC;
}