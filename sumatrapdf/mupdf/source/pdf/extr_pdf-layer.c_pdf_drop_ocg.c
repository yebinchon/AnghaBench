
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; struct TYPE_6__* ocgs; int obj; int intent; } ;
typedef TYPE_1__ pdf_ocg_descriptor ;
struct TYPE_7__ {TYPE_1__* ocg; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;


 int drop_ui (int *,TYPE_1__*) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int ) ;

void
pdf_drop_ocg(fz_context *ctx, pdf_document *doc)
{
 pdf_ocg_descriptor *desc;
 int i;

 if (!doc)
  return;
 desc = doc->ocg;
 if (!desc)
  return;

 drop_ui(ctx, desc);
 pdf_drop_obj(ctx, desc->intent);
 for (i = 0; i < desc->len; i++)
  pdf_drop_obj(ctx, desc->ocgs[i].obj);
 fz_free(ctx, desc->ocgs);
 fz_free(ctx, desc);
}
