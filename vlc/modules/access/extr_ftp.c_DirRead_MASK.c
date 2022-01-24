#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_9__ {char* psz_path; int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; } ;
struct TYPE_8__ {scalar_t__ b_mlst; } ;
struct TYPE_11__ {scalar_t__ tlsmode; TYPE_2__ url; TYPE_1__ features; int /*<<< orphan*/ * data; int /*<<< orphan*/  out; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 scalar_t__ IMPLICIT ; 
 int /*<<< orphan*/  ITEM_NET ; 
 int ITEM_TYPE_DIRECTORY ; 
 int ITEM_TYPE_FILE ; 
 int ITEM_TYPE_UNKNOWN ; 
 scalar_t__ NONE ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char**,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_readdir_helper*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11 (stream_t *p_access, input_item_node_t *p_current_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_ret = VLC_SUCCESS;

    FUNC1( p_sys->data != NULL );
    FUNC1( !p_sys->out );

    struct vlc_readdir_helper rdh;
    FUNC8( &rdh, p_access, p_current_node );

    while (i_ret == VLC_SUCCESS)
    {
        char *psz_file;
        int type = ITEM_TYPE_UNKNOWN;

        char *psz_line = FUNC9( p_sys->data );
        if( psz_line == NULL )
            break;

        if( p_sys->features.b_mlst )
        {
            /* MLST Format is key=val;key=val...; FILENAME */
            if( FUNC5( psz_line, "type=dir" ) )
                type = ITEM_TYPE_DIRECTORY;
            if( FUNC5( psz_line, "type=file" ) )
                type = ITEM_TYPE_FILE;

            /* Get the filename or fail */
            psz_file = FUNC4( psz_line, ' ' );
            if( psz_file )
                psz_file++;
            else
            {
                FUNC3( p_access, "Empty filename in MLST list" );
                FUNC2( psz_line );
                continue;
            }
        }
        else
            psz_file = psz_line;

        char *psz_uri;
        char *psz_filename = FUNC10( psz_file );
        if( psz_filename != NULL &&
            FUNC0( &psz_uri, "%s://%d:%d%s%s/%s",
                      ( p_sys->tlsmode == NONE ) ? "ftp" :
                      ( ( p_sys->tlsmode == IMPLICIT ) ? "ftps" : "ftpes" ),
                      p_sys->url.psz_host, p_sys->url.i_port,
                      p_sys->url.psz_path ? "/" : "",
                      p_sys->url.psz_path ? p_sys->url.psz_path : "",
                      psz_filename ) != -1 )
        {
            i_ret = FUNC6( &rdh, psz_uri, NULL, psz_file,
                                                type, ITEM_NET );
            FUNC2( psz_uri );
        }
        FUNC2( psz_filename );
        FUNC2( psz_line );
    }

    FUNC7( &rdh, i_ret == VLC_SUCCESS );
    return i_ret;
}