
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int evicted; int num_evictions; int total; } ;
typedef TYPE_1__ fz_glyph_cache ;
struct TYPE_7__ {TYPE_1__* glyph_cache; } ;
typedef TYPE_2__ fz_context ;


 int fz_stderr (TYPE_2__*) ;
 int fz_write_printf (TYPE_2__*,int ,char*,int ,...) ;

void
fz_dump_glyph_cache_stats(fz_context *ctx)
{
 fz_glyph_cache *cache = ctx->glyph_cache;
 fz_write_printf(ctx, fz_stderr(ctx), "Glyph Cache Size: %zu\n", cache->total);

 fz_write_printf(ctx, fz_stderr(ctx), "Glyph Cache Evictions: %d (%zu bytes)\n", cache->num_evictions, cache->evicted);

}
