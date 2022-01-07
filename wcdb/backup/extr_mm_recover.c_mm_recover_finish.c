
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zstrm; scalar_t__ fp; } ;
typedef TYPE_1__ mm_recover_ctx ;


 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int inflateEnd (int *) ;

void mm_recover_finish(mm_recover_ctx *ctx)
{
    if (ctx->fp)
        fclose(ctx->fp);
    inflateEnd(&ctx->zstrm);
    free(ctx);
}
