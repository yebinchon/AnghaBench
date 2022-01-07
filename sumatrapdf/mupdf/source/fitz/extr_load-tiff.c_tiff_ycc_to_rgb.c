
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {int samplesperpixel; unsigned int imagelength; unsigned char* samples; unsigned int stride; unsigned int imagewidth; } ;
typedef int fz_context ;


 unsigned char fz_clampi (int,int ,int) ;

__attribute__((used)) static void
tiff_ycc_to_rgb(fz_context *ctx, struct tiff *tiff)
{
 unsigned x, y;
 int offset = tiff->samplesperpixel;

 for (y = 0; y < tiff->imagelength; y++)
 {
  unsigned char * row = &tiff->samples[tiff->stride * y];
  for (x = 0; x < tiff->imagewidth; x++)
  {
   int ycc[3];
   ycc[0] = row[x * offset + 0];
   ycc[1] = row[x * offset + 1] - 128;
   ycc[2] = row[x * offset + 2] - 128;

   row[x * offset + 0] = fz_clampi(ycc[0] + 1.402f * ycc[2], 0, 255);
   row[x * offset + 1] = fz_clampi(ycc[0] - 0.34413f * ycc[1] - 0.71414f * ycc[2], 0, 255);
   row[x * offset + 2] = fz_clampi(ycc[0] + 1.772f * ycc[1], 0, 255);
  }
 }
}
