
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_dialog_provider ;
typedef int vlc_dialog_id ;
typedef int va_list ;
struct TYPE_3__ {char* psz_username; char* psz_password; int b_store; } ;
struct TYPE_4__ {TYPE_1__ login; } ;
struct dialog_answer {TYPE_2__ u; } ;


 int VLC_DIALOG_LOGIN ;
 int VLC_EGENERIC ;
 int assert (int) ;
 int dialog_display_login_va (int *,int **,char const*,int ,char const*,char const*,int ) ;
 int dialog_wait (int *,int *,int ,struct dialog_answer*) ;
 int * get_dialog_provider (int *,int) ;

int
vlc_dialog_wait_login_va(vlc_object_t *p_obj, char **ppsz_username,
                         char **ppsz_password, bool *p_store,
                         const char *psz_default_username,
                         const char *psz_title, const char *psz_fmt, va_list ap)
{
    assert(p_obj != ((void*)0) && ppsz_username != ((void*)0) && ppsz_password != ((void*)0)
        && psz_fmt != ((void*)0) && psz_title != ((void*)0));

    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 1);
    if (p_provider == ((void*)0))
        return VLC_EGENERIC;

    vlc_dialog_id *p_id;
    int i_ret = dialog_display_login_va(p_provider, &p_id, psz_default_username,
                                        p_store != ((void*)0), psz_title, psz_fmt, ap);
    if (i_ret < 0 || p_id == ((void*)0))
        return i_ret;

    struct dialog_answer answer;
    i_ret = dialog_wait(p_provider, p_id, VLC_DIALOG_LOGIN, &answer);
    if (i_ret <= 0)
        return i_ret;

    *ppsz_username = answer.u.login.psz_username;
    *ppsz_password = answer.u.login.psz_password;
    if (p_store != ((void*)0))
        *p_store = answer.u.login.b_store;

    return 1;
}
