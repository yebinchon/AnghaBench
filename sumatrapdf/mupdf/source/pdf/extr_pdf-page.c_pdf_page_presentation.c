
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * obj; } ;
typedef TYPE_1__ pdf_page ;
typedef int pdf_obj ;
struct TYPE_7__ {int duration; int vertical; int outwards; int type; int direction; } ;
typedef TYPE_2__ fz_transition ;
typedef int fz_context ;


 int Blinds ;
 int Box ;
 int Cover ;
 int D ;
 int Di ;
 int Dissolve ;
 int Dm ;
 int Dur ;
 int FZ_TRANSITION_BLINDS ;
 int FZ_TRANSITION_BOX ;
 int FZ_TRANSITION_COVER ;
 int FZ_TRANSITION_DISSOLVE ;
 int FZ_TRANSITION_FADE ;
 int FZ_TRANSITION_FLY ;
 int FZ_TRANSITION_GLITTER ;
 int FZ_TRANSITION_NONE ;
 int FZ_TRANSITION_PUSH ;
 int FZ_TRANSITION_SPLIT ;
 int FZ_TRANSITION_UNCOVER ;
 int FZ_TRANSITION_WIPE ;
 int Fade ;
 int Fly ;
 int Glitter ;
 int H ;
 int I ;
 int M ;
 int PDF_NAME (int ) ;
 int Push ;
 int S ;
 int Split ;
 int Trans ;
 int Uncover ;
 int Wipe ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 float pdf_dict_get_real (int *,int *,int ) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int pdf_to_real (int *,int *) ;

fz_transition *
pdf_page_presentation(fz_context *ctx, pdf_page *page, fz_transition *transition, float *duration)
{
 pdf_obj *obj, *transdict;

 *duration = pdf_dict_get_real(ctx, page->obj, PDF_NAME(Dur));

 transdict = pdf_dict_get(ctx, page->obj, PDF_NAME(Trans));
 if (!transdict)
  return ((void*)0);

 obj = pdf_dict_get(ctx, transdict, PDF_NAME(D));

 transition->duration = (obj ? pdf_to_real(ctx, obj) : 1);

 transition->vertical = !pdf_name_eq(ctx, pdf_dict_get(ctx, transdict, PDF_NAME(Dm)), PDF_NAME(H));
 transition->outwards = !pdf_name_eq(ctx, pdf_dict_get(ctx, transdict, PDF_NAME(M)), PDF_NAME(I));


 transition->direction = (pdf_dict_get_int(ctx, transdict, PDF_NAME(Di)));



 obj = pdf_dict_get(ctx, transdict, PDF_NAME(S));
 if (pdf_name_eq(ctx, obj, PDF_NAME(Split)))
  transition->type = FZ_TRANSITION_SPLIT;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Blinds)))
  transition->type = FZ_TRANSITION_BLINDS;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Box)))
  transition->type = FZ_TRANSITION_BOX;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Wipe)))
  transition->type = FZ_TRANSITION_WIPE;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Dissolve)))
  transition->type = FZ_TRANSITION_DISSOLVE;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Glitter)))
  transition->type = FZ_TRANSITION_GLITTER;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Fly)))
  transition->type = FZ_TRANSITION_FLY;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Push)))
  transition->type = FZ_TRANSITION_PUSH;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Cover)))
  transition->type = FZ_TRANSITION_COVER;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Uncover)))
  transition->type = FZ_TRANSITION_UNCOVER;
 else if (pdf_name_eq(ctx, obj, PDF_NAME(Fade)))
  transition->type = FZ_TRANSITION_FADE;
 else
  transition->type = FZ_TRANSITION_NONE;

 return transition;
}
