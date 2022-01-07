
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int smb_share_list ;
typedef int input_item_node_t ;
struct TYPE_7__ {int p_session; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ DSM_SUCCESS ;
 int ITEM_TYPE_DIRECTORY ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int add_item (TYPE_1__*,struct vlc_readdir_helper*,char const*,int ) ;
 scalar_t__ smb_share_get_list (int ,int *,size_t*) ;
 char* smb_share_list_at (int ,size_t) ;
 int smb_share_list_destroy (int ) ;
 int strlen (char const*) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_1__*,int *) ;

__attribute__((used)) static int BrowseShare( stream_t *p_access, input_item_node_t *p_node )
{
    access_sys_t *p_sys = p_access->p_sys;
    smb_share_list shares;
    const char *psz_name;
    size_t share_count;
    int i_ret = VLC_SUCCESS;

    if( smb_share_get_list( p_sys->p_session, &shares, &share_count )
        != DSM_SUCCESS )
        return VLC_EGENERIC;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_access, p_node );

    for( size_t i = 0; i < share_count && i_ret == VLC_SUCCESS; i++ )
    {
        psz_name = smb_share_list_at( shares, i );

        if( psz_name[strlen( psz_name ) - 1] == '$')
            continue;

        i_ret = add_item( p_access, &rdh, psz_name, ITEM_TYPE_DIRECTORY );
    }

    vlc_readdir_helper_finish( &rdh, i_ret == VLC_SUCCESS );

    smb_share_list_destroy( shares );
    return i_ret;
}
