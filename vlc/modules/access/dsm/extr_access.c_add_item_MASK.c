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
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_3__ {char* psz_location; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 int VLC_ENOMEM ; 
 int FUNC0 (char**,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (struct vlc_readdir_helper*,char*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5( stream_t *p_access, struct vlc_readdir_helper *p_rdh,
                     const char *psz_name, int i_type )
{
    char         *psz_uri;
    int           i_ret;

    char *psz_encoded_name = FUNC4( psz_name );
    if( psz_encoded_name == NULL )
        return VLC_ENOMEM;
    const char *psz_sep = p_access->psz_location[0] != '\0'
        && p_access->psz_location[FUNC2(p_access->psz_location) -1] != '/'
        ? "/" : "";
    i_ret = FUNC0( &psz_uri, "smb://%s%s%s", p_access->psz_location,
                      psz_sep, psz_encoded_name );
    FUNC1( psz_encoded_name );
    if( i_ret == -1 )
        return VLC_ENOMEM;

    i_ret = FUNC3( p_rdh, psz_uri, NULL, psz_name, i_type,
                                        ITEM_NET );
    FUNC1( psz_uri );
    return i_ret;
}