
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* glyph_cache; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_9__ {scalar_t__ refs; } ;


 int FZ_LOCK_GLYPHCACHE ;
 int do_purge (TYPE_1__*) ;
 int fz_free (TYPE_1__*,TYPE_5__*) ;
 int fz_lock (TYPE_1__*,int ) ;
 int fz_unlock (TYPE_1__*,int ) ;

void
fz_drop_glyph_cache_context(fz_context *ctx)
{
 if (!ctx || !ctx->glyph_cache)
  return;

 fz_lock(ctx, FZ_LOCK_GLYPHCACHE);
 ctx->glyph_cache->refs--;
 if (ctx->glyph_cache->refs == 0)
 {
  do_purge(ctx);
  fz_free(ctx, ctx->glyph_cache);
  ctx->glyph_cache = ((void*)0);
 }
 fz_unlock(ctx, FZ_LOCK_GLYPHCACHE);
}
