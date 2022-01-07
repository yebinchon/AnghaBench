
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int DA ;
 int DS ;
 int PDF_NAME (int ) ;
 int RC ;
 int pdf_dict_del (int *,int ,int ) ;
 int pdf_dict_put_string (int *,int ,int ,char*,int ) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_print_default_appearance (int *,char*,int,char const*,float,float const*) ;
 int strlen (char*) ;

void
pdf_set_annot_default_appearance(fz_context *ctx, pdf_annot *annot, const char *font, float size, const float color[3])
{
 char buf[100];

 pdf_print_default_appearance(ctx, buf, sizeof buf, font, size, color);

 pdf_dict_put_string(ctx, annot->obj, PDF_NAME(DA), buf, strlen(buf));

 pdf_dict_del(ctx, annot->obj, PDF_NAME(DS));
 pdf_dict_del(ctx, annot->obj, PDF_NAME(RC));

 pdf_dirty_annot(ctx, annot);
}
