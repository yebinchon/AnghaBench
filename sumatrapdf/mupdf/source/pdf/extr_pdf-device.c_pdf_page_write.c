
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_6__ {int y1; int x0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_7__ {int member_0; int member_3; int member_5; int member_4; int member_2; int member_1; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_buffer ;


 int * fz_new_buffer (int *,int ) ;
 int * pdf_new_dict (int *,int *,int ) ;
 int * pdf_new_pdf_device (int *,int *,TYPE_2__,TYPE_1__,int *,int *) ;

fz_device *pdf_page_write(fz_context *ctx, pdf_document *doc, fz_rect mediabox, pdf_obj **presources, fz_buffer **pcontents)
{
 fz_matrix pagectm = { 1, 0, 0, -1, -mediabox.x0, mediabox.y1 };
 *presources = pdf_new_dict(ctx, doc, 0);
 *pcontents = fz_new_buffer(ctx, 0);
 return pdf_new_pdf_device(ctx, doc, pagectm, mediabox, *presources, *pcontents);
}
