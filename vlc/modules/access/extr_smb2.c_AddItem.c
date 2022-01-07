
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct access_sys {int encoded_url; } ;
struct TYPE_3__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int ITEM_NET ;
 int VLC_ENOMEM ;
 int free (char*) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char const*,int,int ) ;
 char* vlc_smb2_get_url (int *,char*) ;
 char* vlc_uri_encode (char const*) ;

__attribute__((used)) static int AddItem(stream_t *access, struct vlc_readdir_helper *rdh,
                   const char *name, int i_type)
{
    struct access_sys *sys = access->p_sys;
    char *name_encoded = vlc_uri_encode(name);
    if (name_encoded == ((void*)0))
        return VLC_ENOMEM;

    char *url = vlc_smb2_get_url(&sys->encoded_url, name_encoded);
    free(name_encoded);
    if (url == ((void*)0))
        return VLC_ENOMEM;

    int ret = vlc_readdir_helper_additem(rdh, url, ((void*)0), name, i_type,
                                         ITEM_NET);
    free(url);
    return ret;
}
