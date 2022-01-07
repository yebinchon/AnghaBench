
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {int imagelength; int stride; unsigned char* samples; int compression; int predictor; int imagewidth; int samplesperpixel; int bitspersample; int photometric; int extrasamples; scalar_t__ order; scalar_t__ colormap; scalar_t__ stripbytecounts; scalar_t__ stripoffsets; scalar_t__ rowsperstrip; scalar_t__ tilebytecounts; scalar_t__ tileoffsets; scalar_t__ tilewidth; scalar_t__ tilelength; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int FZ_ERROR_MEMORY ;
 scalar_t__ TII ;
 int UINT_MAX ;
 unsigned char* fz_malloc (int *,int) ;
 int fz_throw (int *,int ,char*) ;
 int memset (unsigned char*,int,int) ;
 int tiff_decode_strips (int *,struct tiff*) ;
 int tiff_decode_tiles (int *,struct tiff*) ;
 int tiff_expand_colormap (int *,struct tiff*) ;
 int tiff_invert_line (unsigned char*,int,int,int,int) ;
 int tiff_scale_lab_samples (int *,unsigned char*,int,int) ;
 int tiff_swap_byte_order (unsigned char*,int) ;
 int tiff_unpredict_line (unsigned char*,int,int,int) ;
 int tiff_ycc_to_rgb (int *,struct tiff*) ;

__attribute__((used)) static void
tiff_decode_samples(fz_context *ctx, struct tiff *tiff)
{
 unsigned i;

 if (tiff->imagelength > UINT_MAX / tiff->stride)
  fz_throw(ctx, FZ_ERROR_MEMORY, "image too large");
 tiff->samples = fz_malloc(ctx, tiff->imagelength * tiff->stride);
 memset(tiff->samples, 0x55, tiff->imagelength * tiff->stride);

 if (tiff->tilelength && tiff->tilewidth && tiff->tileoffsets && tiff->tilebytecounts)
  tiff_decode_tiles(ctx, tiff);
 else if (tiff->rowsperstrip && tiff->stripoffsets && tiff->stripbytecounts)
  tiff_decode_strips(ctx, tiff);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "image is missing both strip and tile data");


 if ((tiff->compression == 5 || tiff->compression == 8 || tiff->compression == 32946) && tiff->predictor == 2)
 {
  unsigned char *p = tiff->samples;
  for (i = 0; i < tiff->imagelength; i++)
  {
   tiff_unpredict_line(p, tiff->imagewidth, tiff->samplesperpixel, tiff->bitspersample);
   p += tiff->stride;
  }
 }


 if (tiff->photometric == 6 && tiff->compression != 6 && tiff->compression != 7)
  tiff_ycc_to_rgb(ctx, tiff);


 if (tiff->photometric == 3 && tiff->colormap)
  tiff_expand_colormap(ctx, tiff);


 if (tiff->photometric == 0)
 {
  unsigned char *p = tiff->samples;
  for (i = 0; i < tiff->imagelength; i++)
  {
   tiff_invert_line(p, tiff->imagewidth, tiff->samplesperpixel, tiff->bitspersample, tiff->extrasamples);
   p += tiff->stride;
  }
 }


 if (tiff->extrasamples == 1)
 {



 }


 if (tiff->extrasamples == 2)
 {

 }


 if (tiff->bitspersample == 16 && tiff->order == TII)
  tiff_swap_byte_order(tiff->samples, tiff->imagewidth * tiff->imagelength * tiff->samplesperpixel);





 if (tiff->photometric == 8 && tiff->samplesperpixel == 3)
  tiff_scale_lab_samples(ctx, tiff->samples, tiff->bitspersample, tiff->imagewidth * tiff->imagelength);
}
