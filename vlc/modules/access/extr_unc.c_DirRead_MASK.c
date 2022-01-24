#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_9__ {int /*<<< orphan*/  psz_path; int /*<<< orphan*/  psz_host; } ;
struct TYPE_11__ {TYPE_1__ url; } ;
typedef  TYPE_3__ access_sys_t ;
struct TYPE_12__ {int shi1_type; int /*<<< orphan*/  shi1_netname; } ;
typedef  TYPE_4__ SHARE_INFO_1 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITEM_NET ; 
 int /*<<< orphan*/  ITEM_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int STYPE_SPECIAL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC4 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_readdir_helper*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    FUNC9( &rdh, p_access, p_node );

    // Handle share listing from here. Directory browsing is handled by the
    // usual filesystem module.
    SHARE_INFO_1 *p_info;
    DWORD i_share_enum_res;
    DWORD i_nb_elem;
    DWORD i_resume_handle = 0;
    DWORD i_total_elements; // Unused, but needs to be passed
    wchar_t *wpsz_host = FUNC3( p_sys->url.psz_host );
    if( wpsz_host == NULL )
        return VLC_ENOMEM;
    do
    {
        i_share_enum_res = FUNC2( wpsz_host, 1, (LPBYTE*)&p_info,
                              MAX_PREFERRED_LENGTH, &i_nb_elem,
                              &i_total_elements, &i_resume_handle );
        if( i_share_enum_res == ERROR_SUCCESS ||
            i_share_enum_res == ERROR_MORE_DATA )
        {
            for ( DWORD i = 0; i < i_nb_elem; ++i )
            {
                SHARE_INFO_1 *p_current = p_info + i;
                if( p_current->shi1_type & STYPE_SPECIAL )
                    continue;
                char* psz_name = FUNC0( p_current->shi1_netname );
                if( psz_name == NULL )
                {
                    i_ret = VLC_ENOMEM;
                    break;
                }

                char* psz_path;
                if( FUNC6( p_access, &psz_path, NULL, NULL,
                                 p_sys->url.psz_host, p_sys->url.psz_path,
                                 psz_name ) < 0 )
                {
                    FUNC5( psz_name );
                    i_ret = VLC_ENOMEM;
                    break;
                }
                // We need to concatenate the scheme before, as the window version
                // of smb_get_uri generates a path (and the other call site needs
                // a path). The path is already prefixed by "//" so we just need
                // to add "file:"
                char* psz_uri;
                if( FUNC4( &psz_uri, "file:%s", psz_path ) < 0 )
                {
                    FUNC5( psz_name );
                    FUNC5( psz_path );
                    i_ret = VLC_ENOMEM;
                    break;
                }
                FUNC5( psz_path );

                i_ret = FUNC7( &rdh, psz_uri, NULL,
                                    psz_name, ITEM_TYPE_DIRECTORY, ITEM_NET );
                FUNC5( psz_name );
                FUNC5( psz_uri );
            }
        }
        FUNC1( p_info );
    } while( i_share_enum_res == ERROR_MORE_DATA && i_ret == VLC_SUCCESS );

    FUNC5( wpsz_host );

    FUNC8( &rdh, i_ret == VLC_SUCCESS );

    return i_ret;
}