
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int repo_salt_bin ;


 int GNUTLS_RND_RANDOM ;
 int RAND_bytes (unsigned char*,int) ;
 int gnutls_rnd (int ,unsigned char*,int) ;
 int rawdata_to_hex (unsigned char*,char*,int) ;
 int seaf_warning (char*) ;

int
seafile_generate_repo_salt (char *repo_salt)
{
    unsigned char repo_salt_bin[32];




    int rc = RAND_bytes (repo_salt_bin, sizeof(repo_salt_bin));

    if (rc != 1) {
        seaf_warning ("Failed to generate salt for repo encryption.\n");
        return -1;
    }

    rawdata_to_hex (repo_salt_bin, repo_salt, 32);

    return 0;
}
