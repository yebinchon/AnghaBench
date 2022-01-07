
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int SeafileEncryptionInfo ;
typedef int GObject ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAFILE_TYPE_ENCRYPTION_INFO ;
 int SEAF_ERR_BAD_ARGS ;
 int * g_object_new (int ,char*,char const*,char*,char const*,char*,int,char*,int *,char*,int *,int *) ;
 int g_object_set (int *,char*,int *,int *) ;
 int g_set_error (int **,int ,int ,char*) ;
 int seafile_generate_magic (int,char const*,char const*,int *,int *) ;
 scalar_t__ seafile_generate_random_key (char const*,int,int *,int *) ;
 scalar_t__ seafile_generate_repo_salt (int *) ;

GObject *
seafile_generate_magic_and_random_key(int enc_version,
                                      const char* repo_id,
                                      const char *passwd,
                                      GError **error)
{
    if (!repo_id || !passwd) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return ((void*)0);
    }

    gchar salt[65] = {0};
    gchar magic[65] = {0};
    gchar random_key[97] = {0};

    if (enc_version >= 3 && seafile_generate_repo_salt (salt) < 0) {
        return ((void*)0);
    }

    seafile_generate_magic (enc_version, repo_id, passwd, salt, magic);
    if (seafile_generate_random_key (passwd, enc_version, salt, random_key) < 0) {
        return ((void*)0);
    }

    SeafileEncryptionInfo *sinfo;
    sinfo = g_object_new (SEAFILE_TYPE_ENCRYPTION_INFO,
                          "repo_id", repo_id,
                          "passwd", passwd,
                          "enc_version", enc_version,
                          "magic", magic,
                          "random_key", random_key,
                          ((void*)0));

    if (enc_version >= 3)
        g_object_set (sinfo, "salt", salt, ((void*)0));

    return (GObject *)sinfo;

}
