
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secret_key ;
typedef unsigned char SeafileCrypt ;


 int GNUTLS_RND_RANDOM ;
 int RAND_bytes (unsigned char*,int) ;
 int g_free (unsigned char*) ;
 scalar_t__ gnutls_rnd (int ,unsigned char*,int) ;
 int rawdata_to_hex (unsigned char*,char*,int) ;
 int seaf_warning (char*) ;
 unsigned char* seafile_crypt_new (int,unsigned char*,unsigned char*) ;
 int seafile_derive_key (char const*,int ,int,char const*,unsigned char*,unsigned char*) ;
 int seafile_encrypt (char**,int*,char*,int,unsigned char*) ;
 int strlen (char const*) ;

int
seafile_generate_random_key (const char *passwd,
                             int version,
                             const char *repo_salt,
                             char *random_key)
{
    SeafileCrypt *crypt;
    unsigned char secret_key[32], *rand_key;
    int outlen;
    unsigned char key[32], iv[16];







    if (RAND_bytes (secret_key, sizeof(secret_key)) != 1) {
        seaf_warning ("Failed to generate secret key for repo encryption.\n");
        return -1;
    }


    seafile_derive_key (passwd, strlen(passwd), version, repo_salt, key, iv);

    crypt = seafile_crypt_new (version, key, iv);

    seafile_encrypt ((char **)&rand_key, &outlen,
                     (char *)secret_key, sizeof(secret_key), crypt);

    rawdata_to_hex (rand_key, random_key, 48);

    g_free (crypt);
    g_free (rand_key);

    return 0;
}
