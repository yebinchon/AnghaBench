
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_dialog_provider ;
typedef int vlc_dialog_id ;
typedef int va_list ;


 int VLC_SUCCESS ;
 int assert (int) ;
 int display_progress_va (int *,int **,int,float,char const*,char const*,char const*,int ) ;
 int * get_dialog_provider (int *,int) ;

vlc_dialog_id *
vlc_dialog_display_progress_va(vlc_object_t *p_obj, bool b_indeterminate,
                               float f_position, const char *psz_cancel,
                               const char *psz_title, const char *psz_fmt,
                               va_list ap)
{
    assert(p_obj != ((void*)0) && psz_title != ((void*)0) && psz_fmt != ((void*)0));

    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 1);
    if (p_provider == ((void*)0))
        return ((void*)0);
    vlc_dialog_id *p_id;
    int i_ret = display_progress_va(p_provider, &p_id, b_indeterminate,
                                    f_position, psz_cancel, psz_title, psz_fmt,
                                    ap);
    return i_ret == VLC_SUCCESS ? p_id : ((void*)0);
}
