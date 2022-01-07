
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* samples; int h; int w; int n; int stride; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_md5 ;
typedef int fz_image ;
typedef int fz_context ;


 int fz_drop_pixmap (int *,TYPE_1__*) ;
 TYPE_1__* fz_get_pixmap_from_image (int *,int *,int *,int *,int ,int ) ;
 int fz_md5_final (int *,unsigned char*) ;
 int fz_md5_init (int *) ;
 int fz_md5_update (int *,unsigned char*,int) ;

__attribute__((used)) static void
fz_md5_image(fz_context *ctx, fz_image *image, unsigned char digest[16])
{
 fz_pixmap *pixmap;
 fz_md5 state;
 int h;
 unsigned char *d;

 pixmap = fz_get_pixmap_from_image(ctx, image, ((void*)0), ((void*)0), 0, 0);
 fz_md5_init(&state);
 d = pixmap->samples;
 h = pixmap->h;
 while (h--)
 {
  fz_md5_update(&state, d, pixmap->w * pixmap->n);
  d += pixmap->stride;
 }
 fz_md5_final(&state, digest);
 fz_drop_pixmap(ctx, pixmap);
}
