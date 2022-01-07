
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int num_images; int max_images; TYPE_7__* images; int id; scalar_t__ reuse_images; int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
struct TYPE_13__ {int h; int w; } ;
typedef TYPE_2__ fz_image ;
typedef int fz_context ;
typedef int fz_color_params ;
struct TYPE_14__ {int id; TYPE_2__* image; } ;


 int * end_def (int *,TYPE_1__*) ;
 TYPE_2__* fz_keep_image (int *,TYPE_2__*) ;
 TYPE_7__* fz_realloc_array (int *,TYPE_7__*,int,int ) ;
 int fz_write_image_as_data_uri (int *,int *,TYPE_2__*) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int image ;
 int * start_def (int *,TYPE_1__*) ;

__attribute__((used)) static void
svg_send_image(fz_context *ctx, svg_device *sdev, fz_image *img, fz_color_params color_params)
{
 fz_output *out = sdev->out;
 int i;
 int id;

 if (sdev->reuse_images)
 {
  for (i = sdev->num_images-1; i >= 0; i--)
   if (img == sdev->images[i].image)
    break;
  if (i >= 0)
  {
   fz_write_printf(ctx, out, "<use xlink:href=\"#im%d\" x=\"0\" y=\"0\" width=\"%d\" height=\"%d\"/>\n",
     sdev->images[i].id, img->w, img->h);
   return;
  }


  if (sdev->num_images == sdev->max_images)
  {
   int new_max = sdev->max_images * 2;
   if (new_max == 0)
    new_max = 32;
   sdev->images = fz_realloc_array(ctx, sdev->images, new_max, image);
   sdev->max_images = new_max;
  }

  id = sdev->id++;
  out = start_def(ctx, sdev);
  fz_write_printf(ctx, out, "<symbol id=\"im%d\" viewBox=\"0 0 %d %d\">\n", id, img->w, img->h);

  fz_write_printf(ctx, out, "<image width=\"%d\" height=\"%d\" xlink:href=\"", img->w, img->h);
  fz_write_image_as_data_uri(ctx, out, img);
  fz_write_printf(ctx, out, "\"/>\n");

  fz_write_printf(ctx, out, "</symbol>\n");
  out = end_def(ctx, sdev);

  sdev->images[sdev->num_images].id = id;
  sdev->images[sdev->num_images].image = fz_keep_image(ctx, img);
  sdev->num_images++;

  fz_write_printf(ctx, out, "<use xlink:href=\"#im%d\" x=\"0\" y=\"0\" width=\"%d\" height=\"%d\"/>\n",
    id, img->w, img->h);
 }
 else
 {
  fz_write_printf(ctx, out, "<image width=\"%d\" height=\"%d\" xlink:href=\"", img->w, img->h);
  fz_write_image_as_data_uri(ctx, out, img);
  fz_write_printf(ctx, out, "\"/>\n");
 }
}
