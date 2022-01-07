
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_6__ {int smb2_type; } ;
struct smb2dirent {int name; TYPE_1__ st; } ;
struct access_sys {int smb2dir; int smb2; } ;
struct TYPE_7__ {struct access_sys* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_node_t ;


 int AddItem (TYPE_2__*,struct vlc_readdir_helper*,int ,int) ;
 int ITEM_TYPE_DIRECTORY ;
 int ITEM_TYPE_FILE ;
 int ITEM_TYPE_UNKNOWN ;


 int VLC_SUCCESS ;
 int assert (int ) ;
 struct smb2dirent* smb2_readdir (int ,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_2__*,int *) ;

__attribute__((used)) static int
DirRead(stream_t *access, input_item_node_t *p_node)
{
    struct access_sys *sys = access->p_sys;
    struct smb2dirent *smb2dirent;
    int ret = VLC_SUCCESS;
    assert(sys->smb2dir);

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init(&rdh, access, p_node);

    while (ret == VLC_SUCCESS
        && (smb2dirent = smb2_readdir(sys->smb2, sys->smb2dir)) != ((void*)0))
    {
        int i_type;
        switch (smb2dirent->st.smb2_type)
        {
        case 128:
            i_type = ITEM_TYPE_FILE;
            break;
        case 129:
            i_type = ITEM_TYPE_DIRECTORY;
            break;
        default:
            i_type = ITEM_TYPE_UNKNOWN;
            break;
        }
        ret = AddItem(access, &rdh, smb2dirent->name, i_type);
    }

    vlc_readdir_helper_finish(&rdh, ret == VLC_SUCCESS);

    return ret;
}
