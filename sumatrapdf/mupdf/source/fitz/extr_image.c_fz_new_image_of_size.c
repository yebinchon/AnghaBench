
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_image_get_size_fn ;
typedef int fz_image_get_pixmap_fn ;
struct TYPE_7__ {int w; int h; int xres; int yres; int bpc; int n; int invert_cmyk_jpeg; int interpolate; int imagemask; float* colorkey; int use_decode; float* decode; int * mask; int use_colorkey; int colorspace; int * get_size; int * get_pixmap; int * drop_image; } ;
typedef TYPE_1__ fz_image ;
typedef int fz_drop_image_fn ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_INIT_KEY_STORABLE (TYPE_1__*,int,int ) ;
 TYPE_1__* Memento_label (int ,char*) ;
 int assert (int) ;
 int fz_calloc (int *,int,size_t) ;
 scalar_t__ fz_colorspace_is_indexed (int *,int *) ;
 scalar_t__ fz_colorspace_is_lab_icc (int *,int *) ;
 int fz_colorspace_n (int *,int *) ;
 int fz_drop_image_imp ;
 int fz_keep_colorspace (int *,int *) ;
 int * fz_keep_image (int *,TYPE_1__*) ;
 int memcpy (float*,...) ;

fz_image *
fz_new_image_of_size(fz_context *ctx, int w, int h, int bpc, fz_colorspace *colorspace,
  int xres, int yres, int interpolate, int imagemask, float *decode,
  int *colorkey, fz_image *mask, size_t size,
  fz_image_get_pixmap_fn *get_pixmap,
  fz_image_get_size_fn *get_size,
  fz_drop_image_fn *drop)
{
 fz_image *image;
 int i;

 assert(mask == ((void*)0) || mask->mask == ((void*)0));
 assert(size >= sizeof(fz_image));

 image = Memento_label(fz_calloc(ctx, 1, size), "fz_image");
 FZ_INIT_KEY_STORABLE(image, 1, fz_drop_image_imp);
 image->drop_image = drop;
 image->get_pixmap = get_pixmap;
 image->get_size = get_size;
 image->w = w;
 image->h = h;
 image->xres = xres;
 image->yres = yres;
 image->bpc = bpc;
 image->n = (colorspace ? fz_colorspace_n(ctx, colorspace) : 1);
 image->colorspace = fz_keep_colorspace(ctx, colorspace);
 image->invert_cmyk_jpeg = 1;
 image->interpolate = interpolate;
 image->imagemask = imagemask;
 image->use_colorkey = (colorkey != ((void*)0));
 if (colorkey)
  memcpy(image->colorkey, colorkey, sizeof(int)*image->n*2);
 image->use_decode = 0;
 if (decode)
 {
  memcpy(image->decode, decode, sizeof(float)*image->n*2);
 }
 else
 {
  float maxval = fz_colorspace_is_indexed(ctx, colorspace) ? (1 << bpc) - 1 : 1;
  for (i = 0; i < image->n; i++)
  {
   image->decode[2*i] = 0;
   image->decode[2*i+1] = maxval;
  }
 }



 if (fz_colorspace_is_lab_icc(ctx, colorspace))
 {

  image->decode[0] = image->decode[0]/100.0f;
  image->decode[1] = image->decode[1]/100.0f;
  image->decode[2] = (image->decode[2]+128)/255.0f;
  image->decode[3] = (image->decode[3]+128)/255.0f;
  image->decode[4] = (image->decode[4]+128)/255.0f;
  image->decode[5] = (image->decode[5]+128)/255.0f;
 }
 for (i = 0; i < image->n; i++)
 {
  if (image->decode[i * 2] != 0 || image->decode[i * 2 + 1] != 1)
   break;
 }
 if (i != image->n)
  image->use_decode = 1;
 image->mask = fz_keep_image(ctx, mask);

 return image;
}
