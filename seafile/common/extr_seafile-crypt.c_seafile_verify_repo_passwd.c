
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int str; } ;
typedef TYPE_1__ GString ;


 int TRUE ;
 scalar_t__ g_strcmp0 (char*,char const*) ;
 int g_string_append_printf (TYPE_1__*,char*,char const*,char const*) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (int *) ;
 int rawdata_to_hex (unsigned char*,char*,int) ;
 int seaf_warning (char*,int) ;
 int seafile_derive_key (int ,int ,int,char const*,unsigned char*,unsigned char*) ;

int
seafile_verify_repo_passwd (const char *repo_id,
                            const char *passwd,
                            const char *magic,
                            int version,
                            const char *repo_salt)
{
    GString *buf = g_string_new (((void*)0));
    unsigned char key[32], iv[16];
    char hex[65];

    if (version != 1 && version != 2 && version != 3) {
        seaf_warning ("Unsupported enc_version %d.\n", version);
        return -1;
    }


    g_string_append_printf (buf, "%s%s", repo_id, passwd);

    seafile_derive_key (buf->str, buf->len, version, repo_salt, key, iv);

    g_string_free (buf, TRUE);

    if (version >= 2)
        rawdata_to_hex (key, hex, 32);
    else
        rawdata_to_hex (key, hex, 16);

    if (g_strcmp0 (hex, magic) == 0)
        return 0;
    else
        return -1;
}
