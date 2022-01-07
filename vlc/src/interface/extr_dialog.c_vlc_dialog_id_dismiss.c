
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;


 int dialog_id_post (int *,int *) ;

int
vlc_dialog_id_dismiss(vlc_dialog_id *p_id)
{
    return dialog_id_post(p_id, ((void*)0));
}
