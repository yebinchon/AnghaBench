
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct smbc_dirent {char* name; int smbc_type; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_6__ {char* psz_host; char* psz_path; } ;
struct TYPE_8__ {TYPE_1__ url; int i_smb; } ;
typedef TYPE_3__ access_sys_t ;


 int ITEM_NET ;
 int ITEM_TYPE_DIRECTORY ;
 int ITEM_TYPE_FILE ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char* smb_get_uri (int *,int *,int *,char const*,char const*,char*) ;
 struct smbc_dirent* smbc_readdir (int ) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char*,int,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_2__*,int *) ;
 char* vlc_uri_encode (char const*) ;

__attribute__((used)) static int DirRead (stream_t *p_access, input_item_node_t *p_node )
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_access, p_node );

    struct smbc_dirent *p_entry;

    while( i_ret == VLC_SUCCESS && ( p_entry = smbc_readdir( p_sys->i_smb ) ) )
    {
        const char *psz_server = p_sys->url.psz_host;
        const char *psz_path = p_sys->url.psz_path;
        const char *psz_name = p_entry->name;
        int i_type;

        switch( p_entry->smbc_type )
        {
        case 129:
        case 128:
            psz_server = p_sys->url.psz_host;
            psz_path = ((void*)0);
            psz_name = ((void*)0);

        case 133:
        case 135:
            i_type = ITEM_TYPE_DIRECTORY;
            break;
        case 134:
            i_type = ITEM_TYPE_FILE;
            break;
        default:
        case 130:
        case 136:
        case 132:
        case 131:
            continue;
        }

        char *psz_encoded_name = ((void*)0);
        if( psz_name != ((void*)0)
         && ( psz_encoded_name = vlc_uri_encode( psz_name ) ) == ((void*)0) )
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        char *uri = smb_get_uri(((void*)0), ((void*)0), ((void*)0),
                                psz_server, psz_path, psz_encoded_name);
        if (uri == ((void*)0)) {
            free(psz_encoded_name);
            i_ret = VLC_ENOMEM;
            break;
        }
        free(psz_encoded_name);
        i_ret = vlc_readdir_helper_additem(&rdh, uri, ((void*)0), p_entry->name,
                                           i_type, ITEM_NET);
        free(uri);
    }

    vlc_readdir_helper_finish( &rdh, i_ret == VLC_SUCCESS );

    return i_ret;
}
