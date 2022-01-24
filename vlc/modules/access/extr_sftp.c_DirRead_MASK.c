#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_10__ {int /*<<< orphan*/  psz_base_url; int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ access_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  permissions; } ;
typedef  TYPE_3__ LIBSSH2_SFTP_ATTRIBUTES ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int ITEM_TYPE_DIRECTORY ; 
 int ITEM_TYPE_FILE ; 
 int LIBSSH2_ERROR_BUFFER_TOO_SMALL ; 
 int LIBSSH2_ERROR_EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,size_t,TYPE_3__*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_readdir_helper*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11 (stream_t *p_access, input_item_node_t *p_current_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    LIBSSH2_SFTP_ATTRIBUTES attrs;
    int i_ret = VLC_SUCCESS;
    int err;
    /* Allocate 1024 bytes for file name. Longer names are skipped.
     * libssh2 does not support seeking in directory streams.
     * Retrying with larger buffer is possible, but would require
     * re-opening the directory stream.
     */
    size_t i_size = 1024;
    char *psz_file = FUNC4( i_size );

    if( !psz_file )
        return VLC_ENOMEM;

    struct vlc_readdir_helper rdh;
    FUNC9( &rdh, p_access, p_current_node );

    while( i_ret == VLC_SUCCESS
        && 0 != ( err = FUNC3( p_sys->file, psz_file, i_size, &attrs ) ) )
    {
        if( err < 0 )
        {
            if( err == LIBSSH2_ERROR_BUFFER_TOO_SMALL )
            {
                /* seeking back is not possible ... */
                FUNC5( p_access, "skipped too long file name" );
                continue;
            }
            if( err == LIBSSH2_ERROR_EAGAIN )
            {
                continue;
            }
            FUNC6( p_access, "directory read failed" );
            break;
        }

        /* Create an input item for the current entry */

        char *psz_full_uri, *psz_uri;

        psz_uri = FUNC10( psz_file );
        if( psz_uri == NULL )
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        if( FUNC1( &psz_full_uri, "%d/%s", p_sys->psz_base_url, psz_uri ) == -1 )
        {
            FUNC2( psz_uri );
            i_ret = VLC_ENOMEM;
            break;
        }
        FUNC2( psz_uri );

        int i_type = FUNC0( attrs.permissions ) ? ITEM_TYPE_DIRECTORY : ITEM_TYPE_FILE;
        i_ret = FUNC7( &rdh, psz_full_uri, NULL, psz_file,
                                            i_type, ITEM_NET );
        FUNC2( psz_full_uri );
    }

    FUNC8( &rdh, i_ret == VLC_SUCCESS );
    FUNC2( psz_file );
    return i_ret;
}