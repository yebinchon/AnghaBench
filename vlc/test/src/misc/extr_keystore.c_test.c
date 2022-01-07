
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_12__ {int pf_cancel; int pf_display_login; } ;
typedef TYPE_3__ vlc_dialog_cbs ;
struct TYPE_13__ {char* psz_realm; char* psz_authtype; char* psz_username; char* psz_password; } ;
typedef TYPE_4__ vlc_credential ;
struct TYPE_11__ {int psz_pwd; int psz_user; int psz_authtype; int psz_realm; } ;
struct TYPE_10__ {int * psz_pwd; int * psz_user; } ;
struct testcase {char* psz_url; char* psz_realm; int b_found; char* psz_authtype; TYPE_2__ result; TYPE_1__ opt; } ;
struct dialog_ctx {int b_abort; struct testcase const* p_test; } ;


 int assert (int) ;
 int cancel_cb ;
 int display_login_cb ;
 int printf (char*,unsigned int,char*,char*,char*,char*,char*,int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int var_SetString (int *,char const*,int *) ;
 int vlc_UrlClean (int *) ;
 int vlc_UrlParse (int *,char*) ;
 int vlc_credential_clean (TYPE_4__*) ;
 scalar_t__ vlc_credential_get (TYPE_4__*,int *,char const*,char const*,char*,char*) ;
 int vlc_credential_init (TYPE_4__*,int *) ;
 int vlc_credential_store (TYPE_4__*,int *) ;
 int vlc_dialog_provider_set_callbacks (int *,TYPE_3__ const*,struct dialog_ctx*) ;

__attribute__((used)) static void
test(vlc_object_t *p_obj, unsigned int i_id, const struct testcase *p_test)
{
    printf("test(%u): url %s%s%s%s (%sexpected: %s:%s)\n", i_id, p_test->psz_url,
           p_test->psz_realm != ((void*)0) ? " (realm: " : "",
           p_test->psz_realm != ((void*)0) ? p_test->psz_realm : "",
           p_test->psz_realm != ((void*)0) ? ")" : "",
           p_test->b_found ? "" : "not ", p_test->result.psz_user,
           p_test->result.psz_pwd);

    const vlc_dialog_cbs cbs = {
        .pf_display_login = display_login_cb,
        .pf_cancel = cancel_cb,
    };
    struct dialog_ctx dialog_ctx = {
        .b_abort = 0,
        .p_test = p_test,
    };
    vlc_dialog_provider_set_callbacks(p_obj, &cbs, &dialog_ctx);

    const char *psz_opt_user = ((void*)0), *psz_opt_pwd = ((void*)0);
    if (p_test->opt.psz_user != ((void*)0))
    {
        psz_opt_user = "test-user";
        var_SetString(p_obj, psz_opt_user, p_test->opt.psz_user);
    }
    if (p_test->opt.psz_pwd != ((void*)0))
    {
        psz_opt_pwd = "test-pwd";
        var_SetString(p_obj, psz_opt_pwd, p_test->opt.psz_pwd);
    }

    vlc_url_t url;
    vlc_UrlParse(&url, p_test->psz_url);

    vlc_credential credential;
    vlc_credential_init(&credential, &url);
    credential.psz_realm = p_test->psz_realm;
    credential.psz_authtype = p_test->psz_authtype;

    bool b_found = 0;
    while (vlc_credential_get(&credential, p_obj, psz_opt_user, psz_opt_pwd,
                              "test authentication", "this a test"))
    {
        bool realm_match = !p_test->result.psz_realm
            || (credential.psz_realm
            && strcmp(credential.psz_realm, p_test->result.psz_realm) == 0);
        bool authtype_match = !p_test->result.psz_authtype
            || (credential.psz_authtype
            && strcmp(credential.psz_authtype, p_test->result.psz_authtype) == 0);

        if (realm_match && authtype_match
         && strcmp(credential.psz_username, p_test->result.psz_user) == 0
         && strcmp(credential.psz_password, p_test->result.psz_pwd) == 0)
        {
            b_found = 1;
            break;
        }
    }
    assert(b_found == p_test->b_found);
    vlc_credential_store(&credential, p_obj);

    vlc_UrlClean(&url);
    vlc_credential_clean(&credential);

    vlc_dialog_provider_set_callbacks(p_obj, ((void*)0), ((void*)0));
}
