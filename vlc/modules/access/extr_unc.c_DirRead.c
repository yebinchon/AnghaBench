
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char wchar_t ;
struct vlc_readdir_helper {int dummy; } ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_9__ {int psz_path; int psz_host; } ;
struct TYPE_11__ {TYPE_1__ url; } ;
typedef TYPE_3__ access_sys_t ;
struct TYPE_12__ {int shi1_type; int shi1_netname; } ;
typedef TYPE_4__ SHARE_INFO_1 ;
typedef int LPBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 char* FromWide (int ) ;
 int ITEM_NET ;
 int ITEM_TYPE_DIRECTORY ;
 int MAX_PREFERRED_LENGTH ;
 int NetApiBufferFree (TYPE_4__*) ;
 scalar_t__ NetShareEnum (char*,int,int *,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int STYPE_SPECIAL ;
 char* ToWide (int ) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ asprintf (char**,char*,char*) ;
 int free (char*) ;
 scalar_t__ smb_get_uri (TYPE_2__*,char**,int *,int *,int ,int ,char*) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char*,int ,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_2__*,int *) ;

__attribute__((used)) static int DirRead(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_access, p_node );



    SHARE_INFO_1 *p_info;
    DWORD i_share_enum_res;
    DWORD i_nb_elem;
    DWORD i_resume_handle = 0;
    DWORD i_total_elements;
    wchar_t *wpsz_host = ToWide( p_sys->url.psz_host );
    if( wpsz_host == ((void*)0) )
        return VLC_ENOMEM;
    do
    {
        i_share_enum_res = NetShareEnum( wpsz_host, 1, (LPBYTE*)&p_info,
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
                char* psz_name = FromWide( p_current->shi1_netname );
                if( psz_name == ((void*)0) )
                {
                    i_ret = VLC_ENOMEM;
                    break;
                }

                char* psz_path;
                if( smb_get_uri( p_access, &psz_path, ((void*)0), ((void*)0),
                                 p_sys->url.psz_host, p_sys->url.psz_path,
                                 psz_name ) < 0 )
                {
                    free( psz_name );
                    i_ret = VLC_ENOMEM;
                    break;
                }




                char* psz_uri;
                if( asprintf( &psz_uri, "file:%s", psz_path ) < 0 )
                {
                    free( psz_name );
                    free( psz_path );
                    i_ret = VLC_ENOMEM;
                    break;
                }
                free( psz_path );

                i_ret = vlc_readdir_helper_additem( &rdh, psz_uri, ((void*)0),
                                    psz_name, ITEM_TYPE_DIRECTORY, ITEM_NET );
                free( psz_name );
                free( psz_uri );
            }
        }
        NetApiBufferFree( p_info );
    } while( i_share_enum_res == ERROR_MORE_DATA && i_ret == VLC_SUCCESS );

    free( wpsz_host );

    vlc_readdir_helper_finish( &rdh, i_ret == VLC_SUCCESS );

    return i_ret;
}
