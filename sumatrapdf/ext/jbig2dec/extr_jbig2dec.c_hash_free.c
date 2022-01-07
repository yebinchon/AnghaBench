
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hash_ctx; } ;
typedef TYPE_1__ jbig2dec_params_t ;


 int free (int *) ;

__attribute__((used)) static void
hash_free(jbig2dec_params_t *params)
{
    free(params->hash_ctx);
    params->hash_ctx = ((void*)0);
}
