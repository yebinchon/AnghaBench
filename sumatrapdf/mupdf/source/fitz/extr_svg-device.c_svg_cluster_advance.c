
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wmode; TYPE_1__* items; int font; } ;
typedef TYPE_2__ fz_text_span ;
typedef int fz_context ;
struct TYPE_4__ {int gid; } ;


 int fz_advance_glyph (int *,int ,int,int ) ;

__attribute__((used)) static float
svg_cluster_advance(fz_context *ctx, const fz_text_span *span, int i, int end)
{
 int n = 1;
 while (i + n < end && span->items[i + n].gid == -1)
  ++n;
 if (n > 1)
  return fz_advance_glyph(ctx, span->font, span->items[i].gid, span->wmode) / n;
 return 0;
}
