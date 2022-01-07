
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* vmtx; struct TYPE_3__* hmtx; struct TYPE_3__* cid_to_ucs; struct TYPE_3__* cid_to_gid; int to_unicode; int to_ttf_cmap; int encoding; int font; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_storable ;
typedef int fz_context ;


 int fz_drop_font (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_cmap (int *,int ) ;

__attribute__((used)) static void
pdf_drop_font_imp(fz_context *ctx, fz_storable *fontdesc_)
{
 pdf_font_desc *fontdesc = (pdf_font_desc *)fontdesc_;

 fz_drop_font(ctx, fontdesc->font);
 pdf_drop_cmap(ctx, fontdesc->encoding);
 pdf_drop_cmap(ctx, fontdesc->to_ttf_cmap);
 pdf_drop_cmap(ctx, fontdesc->to_unicode);
 fz_free(ctx, fontdesc->cid_to_gid);
 fz_free(ctx, fontdesc->cid_to_ucs);
 fz_free(ctx, fontdesc->hmtx);
 fz_free(ctx, fontdesc->vmtx);
 fz_free(ctx, fontdesc);
}
