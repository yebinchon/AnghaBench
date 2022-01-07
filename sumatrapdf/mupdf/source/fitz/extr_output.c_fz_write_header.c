
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_separations ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_4__ {int w; int h; int n; int alpha; int xres; int yres; int pagenum; int (* header ) (int *,TYPE_1__*,int *) ;int seps; scalar_t__ line; int s; int * band; } ;
typedef TYPE_1__ fz_band_writer ;


 int fz_count_active_separations (int *,int *) ;
 int fz_keep_separations (int *,int *) ;
 int stub1 (int *,TYPE_1__*,int *) ;

void fz_write_header(fz_context *ctx, fz_band_writer *writer, int w, int h, int n, int alpha, int xres, int yres, int pagenum, fz_colorspace *cs, fz_separations *seps)
{
 if (writer == ((void*)0) || writer->band == ((void*)0))
  return;

 writer->w = w;
 writer->h = h;
 writer->s = fz_count_active_separations(ctx, seps);
 writer->n = n;
 writer->alpha = alpha;
 writer->xres = xres;
 writer->yres = yres;
 writer->pagenum = pagenum;
 writer->line = 0;
 writer->seps = fz_keep_separations(ctx, seps);
 writer->header(ctx, writer, cs);
}
