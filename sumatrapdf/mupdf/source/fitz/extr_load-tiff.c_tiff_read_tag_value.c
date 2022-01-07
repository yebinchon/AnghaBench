
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {unsigned int ep; unsigned int bp; unsigned int rp; } ;






 unsigned int UINT_MAX ;
 int readshort (struct tiff*) ;
 int tiff_readbyte (struct tiff*) ;
 void* tiff_readlong (struct tiff*) ;

__attribute__((used)) static void
tiff_read_tag_value(unsigned *p, struct tiff *tiff, unsigned type, unsigned ofs, unsigned n)
{
 unsigned den;

 if (ofs > (unsigned)(tiff->ep - tiff->bp))
  ofs = (unsigned)(tiff->ep - tiff->bp);
 tiff->rp = tiff->bp + ofs;

 while (n--)
 {
  switch (type)
  {
  case 129:
   *p = tiff_readlong(tiff);
   den = tiff_readlong(tiff);
   if (den)
    *p = *p / den;
   else
    *p = UINT_MAX;
   p ++;
   break;
  case 131: *p++ = tiff_readbyte(tiff); break;
  case 128: *p++ = readshort(tiff); break;
  case 130: *p++ = tiff_readlong(tiff); break;
  default: *p++ = 0; break;
  }
 }
}
