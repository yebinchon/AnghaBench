
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_3__ {int pixmap; } ;
typedef TYPE_1__ fz_glyph ;
typedef int fz_context ;


 int fz_drop_pixmap (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_glyph_imp(fz_context *ctx, fz_storable *glyph_)
{
 fz_glyph *glyph = (fz_glyph *)glyph_;
 fz_drop_pixmap(ctx, glyph->pixmap);
 fz_free(ctx, glyph);
}
