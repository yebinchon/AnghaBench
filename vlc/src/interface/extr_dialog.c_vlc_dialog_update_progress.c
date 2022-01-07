
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_dialog_id ;


 int dialog_update_progress (int *,int *,float,int *) ;

int
vlc_dialog_update_progress(vlc_object_t *p_obj, vlc_dialog_id *p_id,
                           float f_value)
{
    return dialog_update_progress(p_obj, p_id, f_value, ((void*)0));
}
