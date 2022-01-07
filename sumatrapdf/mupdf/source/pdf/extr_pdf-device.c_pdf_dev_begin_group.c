
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int text ;
typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_8__ {int resources; int * doc; } ;
typedef TYPE_1__ pdf_device ;
struct TYPE_9__ {int buf; } ;
typedef TYPE_2__ gstate ;
typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int BM ;
 TYPE_2__* CURRENT_GSTATE (TYPE_1__*) ;
 int ExtGState ;
 int PDF_NAME (int ) ;
 int Type ;
 int fz_append_printf (int *,int ,char*,int,int) ;
 int fz_blendmode_name (int) ;
 int fz_new_buffer (int *,int) ;
 int fz_snprintf (char*,int,char*,int) ;
 int pdf_dev_end_text (int *,TYPE_1__*) ;
 int pdf_dev_new_form (int *,int **,TYPE_1__*,int ,int,int,float,int *) ;
 int pdf_dev_push_new_buf (int *,TYPE_1__*,int ,int *,int *) ;
 int * pdf_dict_getp (int *,int ,char*) ;
 int pdf_dict_put (int *,int *,int ,int ) ;
 int pdf_dict_put_name (int *,int *,int ,int ) ;
 int pdf_dict_putp_drop (int *,int ,char*,int *) ;
 int * pdf_new_dict (int *,int *,int) ;

__attribute__((used)) static void
pdf_dev_begin_group(fz_context *ctx, fz_device *dev, fz_rect bbox, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 pdf_device *pdev = (pdf_device*)dev;
 pdf_document *doc = pdev->doc;
 int num;
 pdf_obj *form_ref;
 gstate *gs;

 pdf_dev_end_text(ctx, pdev);

 num = pdf_dev_new_form(ctx, &form_ref, pdev, bbox, isolated, knockout, alpha, cs);


 {
  char text[32];
  pdf_obj *obj;
  fz_snprintf(text, sizeof(text), "ExtGState/BlendMode%d", blendmode);
  obj = pdf_dict_getp(ctx, pdev->resources, text);
  if (obj == ((void*)0))
  {

   obj = pdf_new_dict(ctx, doc, 2);
   pdf_dict_put(ctx, obj, PDF_NAME(Type), PDF_NAME(ExtGState));
   pdf_dict_put_name(ctx, obj, PDF_NAME(BM), fz_blendmode_name(blendmode));
   pdf_dict_putp_drop(ctx, pdev->resources, text, obj);
  }
 }


 gs = CURRENT_GSTATE(pdev);
 fz_append_printf(ctx, gs->buf, "/BlendMode%d gs /Fm%d Do\n", blendmode, num);



 pdf_dev_push_new_buf(ctx, pdev, fz_new_buffer(ctx, 1024), ((void*)0), form_ref);
}
