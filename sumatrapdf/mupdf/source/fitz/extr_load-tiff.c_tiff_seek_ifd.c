
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {unsigned int* ifd_offsets; scalar_t__ rp; scalar_t__ bp; scalar_t__ ep; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*,unsigned int) ;
 unsigned int tiff_next_ifd (int *,struct tiff*,unsigned int) ;

__attribute__((used)) static void
tiff_seek_ifd(fz_context *ctx, struct tiff *tiff, int subimage)
{
 unsigned offset = tiff->ifd_offsets[0];

 while (subimage--)
 {
  offset = tiff_next_ifd(ctx, tiff, offset);

  if (offset == 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "subimage index %i out of range", subimage);
 }

 tiff->rp = tiff->bp + offset;

 if (tiff->rp < tiff->bp || tiff->rp > tiff->ep)
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid IFD offset %u", offset);
}
