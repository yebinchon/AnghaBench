
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned int n; unsigned int depth; unsigned int width; unsigned int height; unsigned char* samples; } ;
typedef int fz_context ;


 int FZ_ERROR_MEMORY ;
 unsigned int UINT_MAX ;
 unsigned int* adam7_dx ;
 unsigned int* adam7_dy ;
 unsigned int* adam7_ix ;
 unsigned int* adam7_iy ;
 int fz_free (int *,unsigned char*) ;
 unsigned char* fz_malloc (int *,unsigned int) ;
 int fz_throw (int *,int ,char*) ;
 int getcomp (unsigned char*,unsigned int,unsigned int) ;
 int png_predict (unsigned char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int putcomp (unsigned char*,int,unsigned int,int) ;

__attribute__((used)) static void
png_deinterlace(fz_context *ctx, struct info *info, unsigned int *passw, unsigned int *passh, unsigned int *passofs)
{
 unsigned int n = info->n;
 unsigned int depth = info->depth;
 unsigned int stride = (info->width * n * depth + 7) / 8;
 unsigned char *output;
 unsigned int p, x, y, k;

 if (info->height > UINT_MAX / stride)
  fz_throw(ctx, FZ_ERROR_MEMORY, "image too large");
 output = fz_malloc(ctx, info->height * stride);

 for (p = 0; p < 7; p++)
 {
  unsigned char *sp = info->samples + (passofs[p]);
  unsigned int w = passw[p];
  unsigned int h = passh[p];

  png_predict(sp, w, h, n, depth);
  for (y = 0; y < h; y++)
  {
   for (x = 0; x < w; x++)
   {
    int outx = x * adam7_dx[p] + adam7_ix[p];
    int outy = y * adam7_dy[p] + adam7_iy[p];
    unsigned char *dp = output + outy * stride;
    for (k = 0; k < n; k++)
    {
     int v = getcomp(sp, x * n + k, depth);
     putcomp(dp, outx * n + k, depth, v);
    }
   }
   sp += (w * depth * n + 7) / 8;
  }
 }

 fz_free(ctx, info->samples);
 info->samples = output;
}
