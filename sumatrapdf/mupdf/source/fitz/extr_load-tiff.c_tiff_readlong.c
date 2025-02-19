
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiff {scalar_t__ order; } ;


 scalar_t__ TII ;
 unsigned int tiff_readbyte (struct tiff*) ;

__attribute__((used)) static inline unsigned tiff_readlong(struct tiff *tiff)
{
 unsigned a = tiff_readbyte(tiff);
 unsigned b = tiff_readbyte(tiff);
 unsigned c = tiff_readbyte(tiff);
 unsigned d = tiff_readbyte(tiff);
 if (tiff->order == TII)
  return (d << 24) | (c << 16) | (b << 8) | a;
 return (a << 24) | (b << 16) | (c << 8) | d;
}
