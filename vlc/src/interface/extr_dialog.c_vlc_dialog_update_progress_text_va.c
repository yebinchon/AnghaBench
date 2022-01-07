
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_dialog_id ;
typedef int va_list ;


 int VLC_ENOMEM ;
 int assert (int ) ;
 int dialog_update_progress (int *,int *,float,char*) ;
 int vasprintf (char**,char const*,int ) ;

int
vlc_dialog_update_progress_text_va(vlc_object_t *p_obj, vlc_dialog_id *p_id,
                                   float f_value, const char *psz_fmt,
                                   va_list ap)
{
    assert(psz_fmt != ((void*)0));

    char *psz_text;
    if (vasprintf(&psz_text, psz_fmt, ap) == -1)
        return VLC_ENOMEM;
    return dialog_update_progress(p_obj, p_id, f_value, psz_text);
}
