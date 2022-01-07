
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
typedef int libvlc_dialog_id ;


 int VLC_SUCCESS ;
 int vlc_dialog_id_dismiss (int *) ;

int
libvlc_dialog_dismiss(libvlc_dialog_id *p_id)
{
    int i_ret = vlc_dialog_id_dismiss((vlc_dialog_id *)p_id);
    return i_ret == VLC_SUCCESS ? 0 : -1;
}
