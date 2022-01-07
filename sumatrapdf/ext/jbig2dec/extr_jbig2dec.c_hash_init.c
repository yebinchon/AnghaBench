
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hash_ctx; scalar_t__ hash; } ;
typedef TYPE_1__ jbig2dec_params_t ;
typedef int SHA1_CTX ;


 int SHA1_Init (int *) ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;

__attribute__((used)) static void
hash_init(jbig2dec_params_t *params)
{
    params->hash_ctx = (SHA1_CTX *) malloc(sizeof(SHA1_CTX));
    if (params->hash_ctx == ((void*)0)) {
        fprintf(stderr, "unable to allocate hash state\n");
        params->hash = 0;
        return;
    } else {
        SHA1_Init(params->hash_ctx);
    }
}
