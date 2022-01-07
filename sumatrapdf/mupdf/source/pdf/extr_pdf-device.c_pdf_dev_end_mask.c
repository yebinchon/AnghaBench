
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_6__ {int * doc; } ;
typedef TYPE_1__ pdf_device ;
struct TYPE_7__ {int buf; int * on_pop_arg; } ;
typedef TYPE_2__ gstate ;
typedef int fz_device ;
typedef int fz_context ;


 TYPE_2__* CURRENT_GSTATE (TYPE_1__*) ;
 int fz_append_string (int *,int ,char*) ;
 int fz_drop_buffer (int *,int ) ;
 int fz_keep_buffer (int *,int ) ;
 int pdf_dev_end_text (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int *) ;
 int pdf_update_stream (int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
pdf_dev_end_mask(fz_context *ctx, fz_device *dev)
{
 pdf_device *pdev = (pdf_device*)dev;
 pdf_document *doc = pdev->doc;
 gstate *gs = CURRENT_GSTATE(pdev);
 pdf_obj *form_ref = (pdf_obj *)gs->on_pop_arg;


 pdf_dev_end_text(ctx, pdev);
 fz_append_string(ctx, gs->buf, "Q\n");
 pdf_update_stream(ctx, doc, form_ref, gs->buf, 0);
 fz_drop_buffer(ctx, gs->buf);
 gs->buf = fz_keep_buffer(ctx, gs[-1].buf);
 gs->on_pop_arg = ((void*)0);
 pdf_drop_obj(ctx, form_ref);
 fz_append_string(ctx, gs->buf, "q\n");
}
