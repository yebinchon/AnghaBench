
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int fz_curveto (int *,int ,float,float,float,float,float,float) ;

__attribute__((used)) static void pdf_run_c(fz_context *ctx, pdf_processor *proc, float x1, float y1, float x2, float y2, float x3, float y3)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 fz_curveto(ctx, pr->path, x1, y1, x2, y2, x3, y3);
}
