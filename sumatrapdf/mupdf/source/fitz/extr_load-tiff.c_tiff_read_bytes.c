
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {unsigned int ep; unsigned int bp; unsigned int rp; } ;


 int tiff_readbyte (struct tiff*) ;

__attribute__((used)) static void
tiff_read_bytes(unsigned char *p, struct tiff *tiff, unsigned ofs, unsigned n)
{
 if (ofs > (unsigned)(tiff->ep - tiff->bp))
  ofs = (unsigned)(tiff->ep - tiff->bp);
 tiff->rp = tiff->bp + ofs;

 while (n--)
  *p++ = tiff_readbyte(tiff);
}
