
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_dialog_provider ;
typedef int va_list ;


 int VLC_EGENERIC ;
 int VLC_MSG_ERR ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int dialog_display_error_va (int *,char const*,char const*,int ) ;
 int * get_dialog_provider (int *,int) ;
 int msg_Err (int *,char*,char const*) ;
 int msg_GenericVa (int *,int ,char const*,int ) ;

int
vlc_dialog_display_error_va(vlc_object_t *p_obj, const char *psz_title,
                            const char *psz_fmt, va_list ap)
{
    assert(p_obj != ((void*)0) && psz_title != ((void*)0) && psz_fmt != ((void*)0));
    int i_ret;
    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 1);

    if (p_provider != ((void*)0))
        i_ret = dialog_display_error_va(p_provider, psz_title, psz_fmt, ap);
    else
        i_ret = VLC_EGENERIC;

    if (i_ret != VLC_SUCCESS)
    {
        msg_Err(p_obj, "%s", psz_title);
        msg_GenericVa(p_obj, VLC_MSG_ERR, psz_fmt, ap);
    }
    return i_ret;
}
