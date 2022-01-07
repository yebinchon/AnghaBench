
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_3__ {int gctx; } ;
typedef TYPE_1__ fz_jbig2_globals ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int jbig2_global_ctx_free (int ) ;

void
fz_drop_jbig2_globals_imp(fz_context *ctx, fz_storable *globals_)
{
 fz_jbig2_globals *globals = (fz_jbig2_globals *)globals_;
 jbig2_global_ctx_free(globals->gctx);
 fz_free(ctx, globals);
}
