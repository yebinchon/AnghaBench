
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num_gstates; int max_gstates; TYPE_5__* gstates; } ;
typedef TYPE_1__ pdf_device ;
typedef int fz_context ;
typedef int fz_buffer ;
struct TYPE_10__ {void (* on_pop ) (int *,TYPE_1__*,void*) ;int * buf; void* on_pop_arg; int stroke_state; } ;


 int fz_append_string (int *,int *,char*) ;
 int fz_keep_buffer (int *,int *) ;
 int fz_keep_stroke_state (int *,int ) ;
 TYPE_5__* fz_realloc_array (int *,TYPE_5__*,int,int ) ;
 int gstate ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;

__attribute__((used)) static void
pdf_dev_push_new_buf(fz_context *ctx, pdf_device *pdev, fz_buffer *buf, void (*on_pop)(fz_context*,pdf_device*,void*), void *on_pop_arg)
{
 if (pdev->num_gstates == pdev->max_gstates)
 {
  int newmax = pdev->max_gstates*2;
  pdev->gstates = fz_realloc_array(ctx, pdev->gstates, newmax, gstate);
  pdev->max_gstates = newmax;
 }
 memcpy(&pdev->gstates[pdev->num_gstates], &pdev->gstates[pdev->num_gstates-1], sizeof(*pdev->gstates));
 fz_keep_stroke_state(ctx, pdev->gstates[pdev->num_gstates].stroke_state);
 if (buf)
  pdev->gstates[pdev->num_gstates].buf = buf;
 else
  fz_keep_buffer(ctx, pdev->gstates[pdev->num_gstates].buf);
 pdev->gstates[pdev->num_gstates].on_pop = on_pop;
 pdev->gstates[pdev->num_gstates].on_pop_arg = on_pop_arg;
 fz_append_string(ctx, pdev->gstates[pdev->num_gstates].buf, "q\n");
 pdev->num_gstates++;
}
