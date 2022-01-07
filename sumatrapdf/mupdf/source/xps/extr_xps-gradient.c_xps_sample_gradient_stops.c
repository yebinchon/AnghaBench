
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xps_document ;
struct stop {float offset; int a; int b; int g; int r; } ;
struct TYPE_3__ {void*** function; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_context ;


 void* lerp (int ,int ,float) ;

__attribute__((used)) static void
xps_sample_gradient_stops(fz_context *ctx, xps_document *doc, fz_shade *shade, struct stop *stops, int count)
{
 float offset, d;
 int i, k;

 k = 0;
 for (i = 0; i < 256; i++)
 {
  offset = i / 255.0f;
  while (k + 1 < count && offset > stops[k+1].offset)
   k++;

  d = (offset - stops[k].offset) / (stops[k+1].offset - stops[k].offset);

  shade->function[i][0] = lerp(stops[k].r, stops[k+1].r, d);
  shade->function[i][1] = lerp(stops[k].g, stops[k+1].g, d);
  shade->function[i][2] = lerp(stops[k].b, stops[k+1].b, d);
  shade->function[i][3] = lerp(stops[k].a, stops[k+1].a, d);
 }
}
