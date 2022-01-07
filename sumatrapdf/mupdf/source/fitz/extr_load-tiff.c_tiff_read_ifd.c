
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {unsigned int rp; unsigned int bp; unsigned int ep; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*,unsigned int) ;
 unsigned int readshort (struct tiff*) ;
 int tiff_read_tag (int *,struct tiff*,unsigned int) ;

__attribute__((used)) static void
tiff_read_ifd(fz_context *ctx, struct tiff *tiff)
{
 unsigned offset;
 unsigned count;
 unsigned i;

 offset = tiff->rp - tiff->bp;

 count = readshort(tiff);

 if (count * 12 > (unsigned)(tiff->ep - tiff->rp))
  fz_throw(ctx, FZ_ERROR_GENERIC, "overlarge IFD entry count %u", count);

 offset += 2;
 for (i = 0; i < count; i++)
 {
  tiff_read_tag(ctx, tiff, offset);
  offset += 12;
 }
}
