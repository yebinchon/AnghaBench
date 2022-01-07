
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
typedef int libvlc_dialog_id ;


 int vlc_dialog_id_set_context (int *,void*) ;

void
libvlc_dialog_set_context(libvlc_dialog_id *p_id, void *p_context)
{
    vlc_dialog_id_set_context((vlc_dialog_id *)p_id, p_context);
}
