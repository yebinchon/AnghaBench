
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct nfsdirent {int type; int name; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_6__ {int encoded_url; int p_nfsdir; int p_nfs; } ;
typedef TYPE_2__ access_sys_t ;


 int ITEM_NET ;
 int ITEM_TYPE_DIRECTORY ;
 int ITEM_TYPE_FILE ;
 int ITEM_TYPE_UNKNOWN ;


 char* NfsGetUrl (int *,char*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int free (char*) ;
 struct nfsdirent* nfs_readdir (int ,int ) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,int ,int,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_1__*,int *) ;
 char* vlc_uri_encode (int ) ;

__attribute__((used)) static int
DirRead(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    struct nfsdirent *p_nfsdirent;
    int i_ret = VLC_SUCCESS;
    assert(p_sys->p_nfsdir);

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init(&rdh, p_access, p_node);

    while (i_ret == VLC_SUCCESS
        && (p_nfsdirent = nfs_readdir(p_sys->p_nfs, p_sys->p_nfsdir)) != ((void*)0))
    {
        char *psz_name_encoded = vlc_uri_encode(p_nfsdirent->name);
        if (psz_name_encoded == ((void*)0))
        {
            i_ret = VLC_ENOMEM;
            break;
        }
        char *psz_url = NfsGetUrl(&p_sys->encoded_url, psz_name_encoded);
        free(psz_name_encoded);
        if (psz_url == ((void*)0))
        {
            i_ret = VLC_ENOMEM;
            break;
        }

        int i_type;
        switch (p_nfsdirent->type)
        {
        case 128:
            i_type = ITEM_TYPE_FILE;
            break;
        case 129:
            i_type = ITEM_TYPE_DIRECTORY;
            break;
        default:
            i_type = ITEM_TYPE_UNKNOWN;
        }
        i_ret = vlc_readdir_helper_additem(&rdh, psz_url, ((void*)0), p_nfsdirent->name,
                                           i_type, ITEM_NET);
        free(psz_url);
    }

    vlc_readdir_helper_finish(&rdh, i_ret == VLC_SUCCESS);

    return i_ret;
}
