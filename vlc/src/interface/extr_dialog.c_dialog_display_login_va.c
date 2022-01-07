
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* pf_display_login ) (int ,int *,char const*,char*,char const*,int) ;int * pf_cancel; } ;
struct TYPE_6__ {int lock; int p_cbs_data; TYPE_1__ cbs; } ;
typedef TYPE_2__ vlc_dialog_provider ;
typedef int vlc_dialog_id ;
typedef int va_list ;


 int VLC_DIALOG_LOGIN ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * dialog_add_locked (TYPE_2__*,int ) ;
 int free (char*) ;
 int stub1 (int ,int *,char const*,char*,char const*,int) ;
 int vasprintf (char**,char const*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int
dialog_display_login_va(vlc_dialog_provider *p_provider, vlc_dialog_id **pp_id,
                        const char *psz_default_username, bool b_ask_store,
                        const char *psz_title, const char *psz_fmt, va_list ap)
{
    vlc_mutex_lock(&p_provider->lock);
    if (p_provider->cbs.pf_display_login == ((void*)0)
     || p_provider->cbs.pf_cancel == ((void*)0))
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

    vlc_dialog_id *p_id = dialog_add_locked(p_provider, VLC_DIALOG_LOGIN);
    if (p_id == ((void*)0))
    {
        free(psz_text);
        vlc_mutex_unlock(&p_provider->lock);
        return VLC_ENOMEM;
    }
    p_provider->cbs.pf_display_login(p_provider->p_cbs_data, p_id, psz_title,
                                     psz_text, psz_default_username, b_ask_store);
    free(psz_text);
    vlc_mutex_unlock(&p_provider->lock);
    *pp_id = p_id;

    return VLC_SUCCESS;
}
