
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cf; int id; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int ) ;

void
pdf_drop_crypt(fz_context *ctx, pdf_crypt *crypt)
{
 if (!crypt)
  return;

 pdf_drop_obj(ctx, crypt->id);
 pdf_drop_obj(ctx, crypt->cf);
 fz_free(ctx, crypt);
}
