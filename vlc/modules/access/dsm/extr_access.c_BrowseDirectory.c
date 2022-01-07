
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int * smb_stat_list ;
typedef int * smb_stat ;
typedef int input_item_node_t ;
struct TYPE_7__ {int i_tid; int p_session; int * psz_path; } ;
typedef TYPE_2__ access_sys_t ;


 int ITEM_TYPE_DIRECTORY ;
 int ITEM_TYPE_FILE ;
 int SMB_STAT_ISDIR ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int add_item (TYPE_1__*,struct vlc_readdir_helper*,char const*,int) ;
 int asprintf (char**,char*,int *) ;
 int free (char*) ;
 int * smb_find (int ,int ,char*) ;
 scalar_t__ smb_stat_get (int *,int ) ;
 int * smb_stat_list_at (int *,size_t) ;
 size_t smb_stat_list_count (int *) ;
 int smb_stat_list_destroy (int *) ;
 char* smb_stat_name (int *) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_1__*,int *) ;

__attribute__((used)) static int BrowseDirectory( stream_t *p_access, input_item_node_t *p_node )
{
    access_sys_t *p_sys = p_access->p_sys;
    smb_stat_list files;
    smb_stat st;
    char *psz_query;
    const char *psz_name;
    size_t files_count;
    int i_ret = VLC_SUCCESS;

    if( p_sys->psz_path != ((void*)0) )
    {
        if( asprintf( &psz_query, "%s\\*", p_sys->psz_path ) == -1 )
            return VLC_ENOMEM;
        files = smb_find( p_sys->p_session, p_sys->i_tid, psz_query );
        free( psz_query );
    }
    else
        files = smb_find( p_sys->p_session, p_sys->i_tid, "\\*" );

    if( files == ((void*)0) )
        return VLC_EGENERIC;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_access, p_node );

    files_count = smb_stat_list_count( files );
    for( size_t i = 0; i < files_count && i_ret == VLC_SUCCESS; i++ )
    {
        int i_type;

        st = smb_stat_list_at( files, i );

        if( st == ((void*)0) )
        {
            continue;
        }

        psz_name = smb_stat_name( st );

        i_type = smb_stat_get( st, SMB_STAT_ISDIR ) ?
                 ITEM_TYPE_DIRECTORY : ITEM_TYPE_FILE;
        i_ret = add_item( p_access, &rdh, psz_name, i_type );
    }

    vlc_readdir_helper_finish( &rdh, i_ret == VLC_SUCCESS );

    smb_stat_list_destroy( files );
    return i_ret;
}
