
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gcm_kmflag; } ;
typedef TYPE_1__ gcm_ctx_t ;



void
gcm_set_kmflag(gcm_ctx_t *ctx, int kmflag)
{
 ctx->gcm_kmflag = kmflag;
}
