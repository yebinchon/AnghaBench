
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * doc; } ;
typedef TYPE_1__ globals ;
typedef int fz_context ;


 int clearinfo (int *,TYPE_1__*) ;
 int pdf_drop_document (int *,int *) ;

__attribute__((used)) static void closexref(fz_context *ctx, globals *glo)
{
 if (glo->doc)
 {
  pdf_drop_document(ctx, glo->doc);
  glo->doc = ((void*)0);
 }

 clearinfo(ctx, glo);
}
