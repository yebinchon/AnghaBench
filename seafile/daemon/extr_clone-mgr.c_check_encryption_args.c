
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GError ;


 int FALSE ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int TRUE ;
 int g_set_error (int **,int ,int ,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static gboolean
check_encryption_args (const char *magic, int enc_version, const char *random_key,
                       const char *repo_salt,
                       GError **error)
{
    if (!magic) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Magic must be specified");
        return FALSE;
    }

    if (enc_version != 1 && enc_version != 2 && enc_version != 3) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Unsupported enc version");
        return FALSE;
    }

    if (enc_version >= 2) {
        if (!random_key || strlen(random_key) != 96) {
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Random key not specified");
            return FALSE;
        }
        if (enc_version == 3 && (!(repo_salt) || strlen(repo_salt) != 64) ) {
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Repo salt not specified");
            return FALSE;
        }
    }

    return TRUE;
}
