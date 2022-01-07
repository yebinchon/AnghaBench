
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* close_writer ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_document_writer ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

void
fz_close_document_writer(fz_context *ctx, fz_document_writer *wri)
{
 if (wri->close_writer)
  wri->close_writer(ctx, wri);
 wri->close_writer = ((void*)0);
}
