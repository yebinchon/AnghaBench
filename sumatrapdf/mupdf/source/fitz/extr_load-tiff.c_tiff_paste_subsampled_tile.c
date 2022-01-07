
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {int samplesperpixel; int bitspersample; unsigned int imagewidth; unsigned int imagelength; unsigned int* ycbcrsubsamp; unsigned int stride; unsigned char* samples; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int assert (int) ;
 int fz_is_pow2 (unsigned int) ;
 int fz_throw (int *,int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void
tiff_paste_subsampled_tile(fz_context *ctx, struct tiff *tiff, unsigned char *tile, unsigned len, unsigned tw, unsigned th, unsigned col, unsigned row)
{
 unsigned char *src = tile;
 unsigned char *dst;
 unsigned x, y, w, h;
 unsigned sx, sy, sw, sh;
 int k;
 int offsets[4 * 4 * 3];
 int *offset = offsets;

 assert(tiff->samplesperpixel == 3);
 assert(tiff->bitspersample == 8);

 w = tiff->imagewidth;
 h = tiff->imagelength;

 sx = 0;
 sy = 0;
 sw = tiff->ycbcrsubsamp[0];
 sh = tiff->ycbcrsubsamp[1];
 if (sw > 4 || sh > 4 || !fz_is_pow2(sw) || !fz_is_pow2(sh))
  fz_throw(ctx, FZ_ERROR_GENERIC, "Illegal TIFF Subsample values %d %d", sw, sh);

 for (k = 0; k < 3; k++)
  for (y = 0; y < sh; y++)
   for (x = 0; x < sw; x++)
    *offset++ = k + y * tiff->stride + x * 3;

 offset = offsets;
 x = col;
 y = row;
 k = 0;

 dst = &tiff->samples[row * tiff->stride + col * 3];

 while (src < tile + len)
 {
  if (k == 0)
  {
   if (y + sy < h && y + sy < row + th && x + sx < w && x + sx < col + tw)
    dst[*offset] = *src;
   offset++;

   if (++sx >= sw)
   {
    sx = 0;
    if (++sy >= sh)
    {
     sy = 0;
     k++;
    }
   }
  }
  else
  {
   for (sy = 0; sy < sh; sy++)
    for (sx = 0; sx < sw; sx++)
    {
     if (y + sy < h && y + sy < row + th && x + sx < w && x + sx < col + tw)
      dst[*offset] = *src;
     offset++;
    }

   if (++k >= 3)
   {
    k = sx = sy = 0;
    offset = offsets;

    dst += sw * 3;

    x += sw;
    if (x >= col + tw)
    {
     dst -= (x - (col + tw)) * 3;
     dst += (sh - 1) * w * 3;
     dst += col * 3;
     x = col;
     y += sh;
    }
   }
  }

  src++;
 }
}
