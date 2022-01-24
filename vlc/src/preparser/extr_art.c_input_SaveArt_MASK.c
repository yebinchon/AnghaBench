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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16( vlc_object_t *obj, input_item_t *p_item,
                   const void *data, size_t length, const char *psz_type )
{
    char *psz_filename = FUNC1( p_item, psz_type );

    if( !psz_filename )
        return VLC_EGENERIC;

    char *psz_uri = FUNC13( psz_filename, "file" );
    if( !psz_uri )
    {
        FUNC6( psz_filename );
        return VLC_EGENERIC;
    }

    /* Check if we already dumped it */
    struct stat s;
    if( !FUNC14( psz_filename, &s ) )
    {
        FUNC9( p_item, psz_uri );
        FUNC6( psz_filename );
        FUNC6( psz_uri );
        return VLC_SUCCESS;
    }

    /* Dump it otherwise */
    FILE *f = FUNC12( psz_filename, "wb" );
    if( f )
    {
        if( FUNC7( data, 1, length, f ) != length )
        {
            FUNC11( obj, "%s: %s", psz_filename, FUNC15(errno) );
        }
        else
        {
            FUNC10( obj, "album art saved to %s", psz_filename );
            FUNC9( p_item, psz_uri );
        }
        FUNC4( f );
    }
    FUNC6( psz_uri );

    /* save uid info */
    char *uid = FUNC8( p_item, "uid", "md5" );
    if ( ! *uid )
    {
        FUNC6( uid );
        goto end;
    }

    char *psz_byuiddir = FUNC2( uid );
    char *psz_byuidfile = FUNC3( psz_byuiddir, "arturl" );
    FUNC0( psz_byuiddir );
    FUNC6( psz_byuiddir );

    if ( psz_byuidfile )
    {
        f = FUNC12( psz_byuidfile, "wb" );
        if ( f )
        {
            if( FUNC5( "file://", f ) < 0 || FUNC5( psz_filename, f ) < 0 )
                FUNC11( obj, "Error writing %s: %s", psz_byuidfile,
                         FUNC15(errno) );
            FUNC4( f );
        }
        FUNC6( psz_byuidfile );
    }
    FUNC6( uid );
    /* !save uid info */
end:
    FUNC6( psz_filename );
    return VLC_SUCCESS;
}