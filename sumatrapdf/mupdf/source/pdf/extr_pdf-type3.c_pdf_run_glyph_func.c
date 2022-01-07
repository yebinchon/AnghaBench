
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_default_colorspaces ;
typedef int fz_context ;
typedef int fz_buffer ;


 int pdf_run_glyph (int *,void*,int *,int *,int *,int ,void*,int *) ;

__attribute__((used)) static void
pdf_run_glyph_func(fz_context *ctx, void *doc, void *rdb, fz_buffer *contents, fz_device *dev, fz_matrix ctm, void *gstate, fz_default_colorspaces *default_cs)
{
 pdf_run_glyph(ctx, doc, (pdf_obj *)rdb, contents, dev, ctm, gstate, default_cs);
}
