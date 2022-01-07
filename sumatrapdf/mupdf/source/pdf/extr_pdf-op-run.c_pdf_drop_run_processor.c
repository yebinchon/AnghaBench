
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
struct TYPE_4__ {size_t gtop; int * gstate; int default_cs; TYPE_1__ tos; int path; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int fz_drop_default_colorspaces (int *,int ) ;
 int fz_drop_path (int *,int ) ;
 int fz_drop_text (int *,int ) ;
 int fz_free (int *,int *) ;
 int pdf_drop_gstate (int *,int *) ;

__attribute__((used)) static void
pdf_drop_run_processor(fz_context *ctx, pdf_processor *proc)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;

 while (pr->gtop >= 0)
 {
  pdf_drop_gstate(ctx, &pr->gstate[pr->gtop]);
  pr->gtop--;
 }

 fz_drop_path(ctx, pr->path);
 fz_drop_text(ctx, pr->tos.text);

 fz_drop_default_colorspaces(ctx, pr->default_cs);

 fz_free(ctx, pr->gstate);
}
