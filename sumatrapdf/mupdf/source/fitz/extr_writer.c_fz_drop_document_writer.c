
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dev; int (* drop_writer ) (int *,TYPE_1__*) ;scalar_t__ close_writer; } ;
typedef TYPE_1__ fz_document_writer ;
typedef int fz_context ;


 int fz_drop_device (int *,scalar_t__) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;
 int stub1 (int *,TYPE_1__*) ;

void
fz_drop_document_writer(fz_context *ctx, fz_document_writer *wri)
{
 if (!wri)
  return;

 if (wri->close_writer)
  fz_warn(ctx, "dropping unclosed document writer");
 if (wri->drop_writer)
  wri->drop_writer(ctx, wri);
 if (wri->dev)
  fz_drop_device(ctx, wri->dev);
 fz_free(ctx, wri);
}
