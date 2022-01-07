
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int fz_rectto (int *,int ,float,float,float,float) ;

__attribute__((used)) static void pdf_run_re(fz_context *ctx, pdf_processor *proc, float x, float y, float w, float h)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 fz_rectto(ctx, pr->path, x, y, x+w, y+h);
}
