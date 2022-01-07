
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_7__ {int * doc; } ;
typedef TYPE_1__ pdf_device ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_2__ gstate ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_buffer ;


 TYPE_2__* CURRENT_GSTATE (TYPE_1__*) ;
 int fz_drop_buffer (int *,int *) ;
 int * fz_keep_buffer (int *,int ) ;
 int pdf_dev_end_text (int *,TYPE_1__*) ;
 scalar_t__ pdf_dev_pop (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int *) ;
 int pdf_update_stream (int *,int *,int *,int *,int ) ;

__attribute__((used)) static void
pdf_dev_end_group(fz_context *ctx, fz_device *dev)
{
 pdf_device *pdev = (pdf_device*)dev;
 pdf_document *doc = pdev->doc;
 gstate *gs = CURRENT_GSTATE(pdev);
 fz_buffer *buf = fz_keep_buffer(ctx, gs->buf);
 pdf_obj *form_ref;

 pdf_dev_end_text(ctx, pdev);
 form_ref = (pdf_obj *)pdf_dev_pop(ctx, pdev);
 pdf_update_stream(ctx, doc, form_ref, buf, 0);
 fz_drop_buffer(ctx, buf);
 pdf_drop_obj(ctx, form_ref);
}
