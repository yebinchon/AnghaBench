
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash_ctx; } ;
typedef TYPE_1__ jbig2dec_params_t ;
typedef int FILE ;


 int SHA1_DIGEST_SIZE ;
 int SHA1_Final (int ,unsigned char*) ;
 int fprintf (int *,char*,char*) ;
 int snprintf (char*,int,char*,unsigned char) ;

__attribute__((used)) static void
hash_print(jbig2dec_params_t *params, FILE *out)
{
    unsigned char md[SHA1_DIGEST_SIZE];
    char digest[2 * SHA1_DIGEST_SIZE + 1];
    int i;

    SHA1_Final(params->hash_ctx, md);
    for (i = 0; i < SHA1_DIGEST_SIZE; i++) {
        snprintf(&(digest[2 * i]), 3, "%02x", md[i]);
    }
    fprintf(out, "%s", digest);
}
