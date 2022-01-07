
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int did_layout; int (* layout ) (int *,TYPE_1__*,float,float,float) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,float,float,float) ;

void
fz_layout_document(fz_context *ctx, fz_document *doc, float w, float h, float em)
{
 if (doc && doc->layout)
 {
  doc->layout(ctx, doc, w, h, em);
  doc->did_layout = 1;
 }
}
