
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* end_page ) (int *,TYPE_1__*,int *) ;int * dev; } ;
typedef TYPE_1__ fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,int *) ;

void
fz_end_page(fz_context *ctx, fz_document_writer *wri)
{
 fz_device *dev;

 if (!wri)
  return;
 dev = wri->dev;
 wri->dev = ((void*)0);
 wri->end_page(ctx, wri, dev);
}
