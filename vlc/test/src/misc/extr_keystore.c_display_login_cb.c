
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_dialog_id ;
struct TYPE_2__ {char const* psz_user; int * psz_pwd; } ;
struct testcase {int b_dialog_store; TYPE_1__ dialog; } ;
struct dialog_ctx {int b_abort; struct testcase* p_test; } ;


 int vlc_dialog_id_dismiss (int *) ;
 int vlc_dialog_id_post_login (int *,char const*,int *,int ) ;

__attribute__((used)) static void
display_login_cb(void *p_data, vlc_dialog_id *p_id, const char *psz_title,
                 const char *psz_text, const char *psz_default_username,
                 bool b_ask_store)
{
    (void) psz_title;
    (void) psz_text;
    (void) psz_default_username;
    (void) b_ask_store;
    struct dialog_ctx *p_dialog_ctx = p_data;
    const struct testcase *p_testcase = p_dialog_ctx->p_test;

    const char *psz_user = p_testcase->dialog.psz_user != ((void*)0) ?
                           p_testcase->dialog.psz_user : psz_default_username;
    if (!p_dialog_ctx->b_abort && psz_user != ((void*)0)
     && p_testcase->dialog.psz_pwd != ((void*)0))
    {
        vlc_dialog_id_post_login(p_id, psz_user, p_testcase->dialog.psz_pwd,
                                 p_testcase->b_dialog_store);
        p_dialog_ctx->b_abort = 1;
    }
    else
        vlc_dialog_id_dismiss(p_id);
}
