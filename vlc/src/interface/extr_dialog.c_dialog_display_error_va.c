
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pf_display_error ) (int ,char const*,char*) ;} ;
struct TYPE_5__ {int lock; int p_cbs_data; TYPE_1__ cbs; } ;
typedef TYPE_2__ vlc_dialog_provider ;
typedef int va_list ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int stub1 (int ,char const*,char*) ;
 int vasprintf (char**,char const*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int
dialog_display_error_va(vlc_dialog_provider *p_provider, const char *psz_title,
                        const char *psz_fmt, va_list ap)
{
    vlc_mutex_lock(&p_provider->lock);
    if (p_provider->cbs.pf_display_error == ((void*)0))
    {
        vlc_mutex_unlock(&p_provider->lock);
        return VLC_EGENERIC;
    }

    char *psz_text;
    if (vasprintf(&psz_text, psz_fmt, ap) == -1)
    {
        vlc_mutex_unlock(&p_provider->lock);
        return VLC_ENOMEM;
    }

    p_provider->cbs.pf_display_error(p_provider->p_cbs_data, psz_title, psz_text);
    free(psz_text);
    vlc_mutex_unlock(&p_provider->lock);

    return VLC_SUCCESS;
}
