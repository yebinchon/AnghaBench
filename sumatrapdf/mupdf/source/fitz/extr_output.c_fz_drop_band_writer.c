
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {int seps; int (* drop ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_band_writer ;


 int fz_drop_separations (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

void fz_drop_band_writer(fz_context *ctx, fz_band_writer *writer)
{
 if (writer == ((void*)0))
  return;
 if (writer->drop != ((void*)0))
  writer->drop(ctx, writer);
 fz_drop_separations(ctx, writer->seps);
 fz_free(ctx, writer);
}
