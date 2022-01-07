
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t num_gstates; TYPE_1__* gstates; } ;
typedef TYPE_2__ pdf_device ;
struct TYPE_10__ {int (* on_pop ) (int *,TYPE_2__*,void*) ;int buf; void* on_pop_arg; } ;
typedef TYPE_3__ gstate ;
typedef int fz_context ;
struct TYPE_8__ {int buf; int stroke_state; } ;


 TYPE_3__* CURRENT_GSTATE (TYPE_2__*) ;
 int fz_append_string (int *,int ,char*) ;
 int fz_drop_buffer (int *,int ) ;
 int fz_drop_stroke_state (int *,int ) ;
 int stub1 (int *,TYPE_2__*,void*) ;

__attribute__((used)) static void *
pdf_dev_pop(fz_context *ctx, pdf_device *pdev)
{
 gstate *gs = CURRENT_GSTATE(pdev);
 void *arg = gs->on_pop_arg;

 fz_append_string(ctx, gs->buf, "Q\n");
 if (gs->on_pop)
  gs->on_pop(ctx, pdev, arg);
 pdev->num_gstates--;
 fz_drop_stroke_state(ctx, pdev->gstates[pdev->num_gstates].stroke_state);
 fz_drop_buffer(ctx, pdev->gstates[pdev->num_gstates].buf);
 return arg;
}
