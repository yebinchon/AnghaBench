
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_4__ {int * dev; int * (* begin_page ) (int *,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int * stub1 (int *,TYPE_1__*,int ) ;

fz_device *
fz_begin_page(fz_context *ctx, fz_document_writer *wri, fz_rect mediabox)
{
 if (!wri)
  return ((void*)0);
 if (wri->dev)
  fz_throw(ctx, FZ_ERROR_GENERIC, "called begin page without ending the previous page");
 wri->dev = wri->begin_page(ctx, wri, mediabox);
 return wri->dev;
}
