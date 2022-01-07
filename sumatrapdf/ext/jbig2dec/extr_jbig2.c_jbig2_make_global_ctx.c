
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jbig2GlobalCtx ;
typedef int Jbig2Ctx ;



Jbig2GlobalCtx *
jbig2_make_global_ctx(Jbig2Ctx *ctx)
{
    return (Jbig2GlobalCtx *) ctx;
}
