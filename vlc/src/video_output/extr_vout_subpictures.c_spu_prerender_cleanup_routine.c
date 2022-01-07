
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_prerender_ctx_s {int cleanuplock; int ** pp_processed; int fmtsrc; int fmtdst; } ;


 int video_format_Clean (int *) ;
 int vlc_mutex_unlock (int ) ;

__attribute__((used)) static void spu_prerender_cleanup_routine(void *priv)
{
    struct spu_prerender_ctx_s *ctx = priv;
    video_format_Clean(&ctx->fmtdst);
    video_format_Clean(&ctx->fmtsrc);
    *ctx->pp_processed = ((void*)0);
    vlc_mutex_unlock(ctx->cleanuplock);
}
