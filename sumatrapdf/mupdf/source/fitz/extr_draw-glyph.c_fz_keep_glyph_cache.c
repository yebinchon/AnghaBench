
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int refs; } ;
typedef TYPE_1__ fz_glyph_cache ;
struct TYPE_8__ {TYPE_1__* glyph_cache; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_GLYPHCACHE ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;

fz_glyph_cache *
fz_keep_glyph_cache(fz_context *ctx)
{
 fz_lock(ctx, FZ_LOCK_GLYPHCACHE);
 ctx->glyph_cache->refs++;
 fz_unlock(ctx, FZ_LOCK_GLYPHCACHE);
 return ctx->glyph_cache;
}
