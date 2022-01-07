
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {scalar_t__ line; scalar_t__ h; int (* trailer ) (int *,TYPE_1__*) ;int (* band ) (int *,TYPE_1__*,int,int,int,unsigned char const*) ;} ;
typedef TYPE_1__ fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int stub1 (int *,TYPE_1__*,int,int,int,unsigned char const*) ;
 int stub2 (int *,TYPE_1__*) ;

void fz_write_band(fz_context *ctx, fz_band_writer *writer, int stride, int band_height, const unsigned char *samples)
{
 if (writer == ((void*)0) || writer->band == ((void*)0))
  return;
 if (writer->line + band_height > writer->h)
  band_height = writer->h - writer->line;
 if (band_height < 0) {
  fz_throw(ctx, FZ_ERROR_GENERIC, "Too much band data!");
 }
 if (band_height > 0) {
  writer->band(ctx, writer, stride, writer->line, band_height, samples);
  writer->line += band_height;
 }
 if (writer->line == writer->h && writer->trailer) {
  writer->trailer(ctx, writer);

  writer->line++;
 }
}
