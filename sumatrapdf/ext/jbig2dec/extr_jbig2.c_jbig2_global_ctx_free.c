
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jbig2GlobalCtx ;
typedef int Jbig2Ctx ;
typedef int Jbig2Allocator ;


 int * jbig2_ctx_free (int *) ;

Jbig2Allocator *
jbig2_global_ctx_free(Jbig2GlobalCtx *global_ctx)
{
    return jbig2_ctx_free((Jbig2Ctx *) global_ctx);
}
