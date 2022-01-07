
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
typedef int libvlc_dialog_id ;


 int VLC_SUCCESS ;
 int vlc_dialog_id_post_login (int *,char const*,char const*,int) ;

int
libvlc_dialog_post_login(libvlc_dialog_id *p_id, const char *psz_username,
                         const char *psz_password, bool b_store)
{
    int i_ret = vlc_dialog_id_post_login((vlc_dialog_id *)p_id, psz_username,
                                         psz_password, b_store);
    return i_ret == VLC_SUCCESS ? 0 : -1;
}
