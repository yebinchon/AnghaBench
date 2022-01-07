
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
typedef int libvlc_dialog_id ;


 void* vlc_dialog_id_get_context (int *) ;

void *
libvlc_dialog_get_context(libvlc_dialog_id *p_id)
{
    return vlc_dialog_id_get_context((vlc_dialog_id *)p_id);
}
