
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
typedef int libvlc_dialog_id ;


 int VLC_SUCCESS ;
 int vlc_dialog_id_post_action (int *,int) ;

int
libvlc_dialog_post_action(libvlc_dialog_id *p_id, int i_action)
{
    int i_ret = vlc_dialog_id_post_action((vlc_dialog_id *)p_id, i_action);
    return i_ret == VLC_SUCCESS ? 0 : -1;
}
