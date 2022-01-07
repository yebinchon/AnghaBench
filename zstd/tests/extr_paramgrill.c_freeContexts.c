
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dctx; int cctx; int dictBuffer; } ;
typedef TYPE_1__ contexts_t ;


 int ZSTD_freeCCtx (int ) ;
 int ZSTD_freeDCtx (int ) ;
 int free (int ) ;

__attribute__((used)) static void freeContexts(const contexts_t ctx) {
    free(ctx.dictBuffer);
    ZSTD_freeCCtx(ctx.cctx);
    ZSTD_freeDCtx(ctx.dctx);
}
