
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_7__ {scalar_t__ i_count; char** ppsz_names; } ;
struct TYPE_8__ {TYPE_1__ exports; } ;
struct TYPE_10__ {int encoded_url; TYPE_2__ res; int * p_mount; } ;
typedef TYPE_4__ access_sys_t ;


 int ITEM_NET ;
 int ITEM_TYPE_DIRECTORY ;
 char* NfsGetUrl (int *,char*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int free (char*) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char*,int ,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_3__*,int *) ;

__attribute__((used)) static int
MountRead(stream_t *p_access, input_item_node_t *p_node)
{
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_mount != ((void*)0) && p_sys->res.exports.i_count >= 0);
    int i_ret = VLC_SUCCESS;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init(&rdh, p_access, p_node);

    for (int i = 0; i < p_sys->res.exports.i_count && i_ret == VLC_SUCCESS; ++i)
    {
        char *psz_name = p_sys->res.exports.ppsz_names[i];

        char *psz_url = NfsGetUrl(&p_sys->encoded_url, psz_name);
        if (psz_url == ((void*)0))
        {
            i_ret = VLC_ENOMEM;
            break;
        }
        i_ret = vlc_readdir_helper_additem(&rdh, psz_url, ((void*)0), psz_name,
                                            ITEM_TYPE_DIRECTORY, ITEM_NET);
        free(psz_url);
    }

    vlc_readdir_helper_finish(&rdh, i_ret == VLC_SUCCESS);

    return i_ret;
}
