
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char SeafileCrypt ;


 int g_free (unsigned char*) ;
 int hex_to_rawdata (char const*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int seaf_warning (char*) ;
 unsigned char* seafile_crypt_new (int,unsigned char*,unsigned char*) ;
 scalar_t__ seafile_decrypt (char**,int*,char*,int,unsigned char*) ;
 int seafile_derive_key (char const*,int,int,char const*,unsigned char*,unsigned char*) ;
 int strlen (char const*) ;

int
seafile_decrypt_repo_enc_key (int enc_version,
                              const char *passwd, const char *random_key,
                              const char *repo_salt,
                              unsigned char *key_out, unsigned char *iv_out)
{
    unsigned char key[32], iv[16];

    seafile_derive_key (passwd, strlen(passwd), enc_version, repo_salt, key, iv);

    if (enc_version == 1) {
        memcpy (key_out, key, 16);
        memcpy (iv_out, iv, 16);
        return 0;
    } else if (enc_version >= 2) {
        unsigned char enc_random_key[48], *dec_random_key;
        int outlen;
        SeafileCrypt *crypt;

        if (random_key == ((void*)0) || random_key[0] == 0) {
            seaf_warning ("Empty random key.\n");
            return -1;
        }

        hex_to_rawdata (random_key, enc_random_key, 48);

        crypt = seafile_crypt_new (enc_version, key, iv);
        if (seafile_decrypt ((char **)&dec_random_key, &outlen,
                             (char *)enc_random_key, 48,
                             crypt) < 0) {
            seaf_warning ("Failed to decrypt random key.\n");
            g_free (crypt);
            return -1;
        }
        g_free (crypt);

        seafile_derive_key ((char *)dec_random_key, 32, enc_version,
                            repo_salt,
                            key, iv);
        memcpy (key_out, key, 32);
        memcpy (iv_out, iv, 16);

        g_free (dec_random_key);
        return 0;
    }

    return -1;
}
