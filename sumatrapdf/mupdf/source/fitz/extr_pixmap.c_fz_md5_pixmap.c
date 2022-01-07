
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; int h; int stride; int w; int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_md5 ;
typedef int fz_context ;


 int fz_md5_final (int *,unsigned char*) ;
 int fz_md5_init (int *) ;
 int fz_md5_update (int *,unsigned char*,int) ;

void
fz_md5_pixmap(fz_context *ctx, fz_pixmap *pix, unsigned char digest[16])
{
 fz_md5 md5;

 fz_md5_init(&md5);
 if (pix)
 {
  unsigned char *s = pix->samples;
  int h = pix->h;
  int ss = pix->stride;
  int len = pix->w * pix->n;
  while (h--)
  {
   fz_md5_update(&md5, s, len);
   s += ss;
  }
 }
 fz_md5_final(&md5, digest);
}
