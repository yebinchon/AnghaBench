
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_1__ fz_text_span ;
struct TYPE_11__ {TYPE_1__* head; } ;
typedef TYPE_2__ fz_text ;
typedef int fz_stroke_state ;
struct TYPE_12__ {int new_obj; TYPE_2__ const* lasttext; scalar_t__ color; } ;
typedef TYPE_3__ fz_stext_device ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_drop_text (int *,TYPE_2__ const*) ;
 TYPE_2__ const* fz_keep_text (int *,TYPE_2__ const*) ;
 int fz_stext_extract (int *,TYPE_3__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
fz_stext_clip_stroke_text(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
 fz_stext_device *tdev = (fz_stext_device*)dev;
 fz_text_span *span;
 if (text == tdev->lasttext)
  return;
 tdev->color = 0;
 tdev->new_obj = 1;
 for (span = text->head; span; span = span->next)
  fz_stext_extract(ctx, tdev, span, ctm);
 fz_drop_text(ctx, tdev->lasttext);
 tdev->lasttext = fz_keep_text(ctx, text);
}
