
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Vertices ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int pdf_dict_del (int *,int ,int ) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int vertices_subtypes ;

void pdf_clear_annot_vertices(fz_context *ctx, pdf_annot *annot)
{
 check_allowed_subtypes(ctx, annot, PDF_NAME(Vertices), vertices_subtypes);
 pdf_dict_del(ctx, annot->obj, PDF_NAME(Vertices));
 pdf_dirty_annot(ctx, annot);
}
