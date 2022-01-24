#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  smb_share_list ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_session; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ DSM_SUCCESS ; 
 int /*<<< orphan*/  ITEM_TYPE_DIRECTORY ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (TYPE_1__*,struct vlc_readdir_helper*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_readdir_helper*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( stream_t *p_access, input_item_node_t *p_node )
{
    access_sys_t *p_sys = p_access->p_sys;
    smb_share_list  shares;
    const char     *psz_name;
    size_t          share_count;
    int             i_ret = VLC_SUCCESS;

    if( FUNC1( p_sys->p_session, &shares, &share_count )
        != DSM_SUCCESS )
        return VLC_EGENERIC;

    struct vlc_readdir_helper rdh;
    FUNC6( &rdh, p_access, p_node );

    for( size_t i = 0; i < share_count && i_ret == VLC_SUCCESS; i++ )
    {
        psz_name = FUNC2( shares, i );

        if( psz_name[FUNC4( psz_name ) - 1] == '$')
            continue;

        i_ret = FUNC0( p_access, &rdh, psz_name, ITEM_TYPE_DIRECTORY );
    }

    FUNC5( &rdh, i_ret == VLC_SUCCESS );

    FUNC3( shares );
    return i_ret;
}