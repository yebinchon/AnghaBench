
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_font_desc ;
struct TYPE_10__ {TYPE_3__* gstate; int * font_name; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_7__ {float size; int font; } ;
struct TYPE_8__ {TYPE_1__ text; } ;
struct TYPE_9__ {TYPE_2__ pending; } ;


 int Font ;
 int PDF_NAME (int ) ;
 int copy_resource (int *,TYPE_4__*,int ,char const*) ;
 int filter_flush (int *,TYPE_4__*,int ) ;
 int fz_free (int *,int *) ;
 int * fz_strdup (int *,char const*) ;
 int pdf_drop_font (int *,int ) ;
 int pdf_keep_font (int *,int *) ;

__attribute__((used)) static void
pdf_filter_Tf(fz_context *ctx, pdf_processor *proc, const char *name, pdf_font_desc *font, float size)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, 0);
 fz_free(ctx, p->font_name);
 p->font_name = ((void*)0);
 p->font_name = name ? fz_strdup(ctx, name) : ((void*)0);
 pdf_drop_font(ctx, p->gstate->pending.text.font);
 p->gstate->pending.text.font = pdf_keep_font(ctx, font);
 p->gstate->pending.text.size = size;
 copy_resource(ctx, p, PDF_NAME(Font), name);
}
