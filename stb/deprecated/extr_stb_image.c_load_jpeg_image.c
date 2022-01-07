
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int hs; int vs; int ystep; int w_lores; scalar_t__ ypos; int* (* resample ) (int*,int ,int ,int,int) ;int line1; int line0; } ;
typedef TYPE_3__ stbi_resample ;
typedef int stbi__uint8 ;
struct TYPE_11__ {int img_h_max; int img_v_max; TYPE_2__* s; TYPE_1__* img_comp; } ;
typedef TYPE_4__ jpeg ;
struct TYPE_9__ {int img_n; int img_x; int img_y; } ;
struct TYPE_8__ {int* linebuf; int h; int v; scalar_t__ y; scalar_t__ w2; int data; } ;


 int YCbCr_to_RGB_row (int*,int*,int*,int*,int,int) ;
 int cleanup_jpeg (TYPE_4__*) ;
 int decode_jpeg_image (TYPE_4__*) ;
 int* epuc (char*,char*) ;
 scalar_t__ malloc (int) ;
 int* resample_row_1 (int*,int ,int ,int,int) ;
 int* resample_row_generic (int*,int ,int ,int,int) ;
 int* resample_row_h_2 (int*,int ,int ,int,int) ;
 int* resample_row_hv_2 (int*,int ,int ,int,int) ;
 int* resample_row_v_2 (int*,int ,int ,int,int) ;
 int stbi_YCbCr_installed (int*,int*,int*,int*,int,int) ;
 int* stub1 (int*,int ,int ,int,int) ;

__attribute__((used)) static stbi__uint8 *load_jpeg_image(jpeg *z, int *out_x, int *out_y, int *comp, int req_comp)
{
   int n, decode_n;

   if (req_comp < 0 || req_comp > 4) return epuc("bad req_comp", "Internal error");
   z->s->img_n = 0;


   if (!decode_jpeg_image(z)) { cleanup_jpeg(z); return ((void*)0); }


   n = req_comp ? req_comp : z->s->img_n;

   if (z->s->img_n == 3 && n < 3)
      decode_n = 1;
   else
      decode_n = z->s->img_n;


   {
      int k;
      unsigned int i,j;
      stbi__uint8 *output;
      stbi__uint8 *coutput[4];

      stbi_resample res_comp[4];

      for (k=0; k < decode_n; ++k) {
         stbi_resample *r = &res_comp[k];



         z->img_comp[k].linebuf = (stbi__uint8 *) malloc(z->s->img_x + 3);
         if (!z->img_comp[k].linebuf) { cleanup_jpeg(z); return epuc("outofmem", "Out of memory"); }

         r->hs = z->img_h_max / z->img_comp[k].h;
         r->vs = z->img_v_max / z->img_comp[k].v;
         r->ystep = r->vs >> 1;
         r->w_lores = (z->s->img_x + r->hs-1) / r->hs;
         r->ypos = 0;
         r->line0 = r->line1 = z->img_comp[k].data;

         if (r->hs == 1 && r->vs == 1) r->resample = resample_row_1;
         else if (r->hs == 1 && r->vs == 2) r->resample = resample_row_v_2;
         else if (r->hs == 2 && r->vs == 1) r->resample = resample_row_h_2;
         else if (r->hs == 2 && r->vs == 2) r->resample = resample_row_hv_2;
         else r->resample = resample_row_generic;
      }


      output = (stbi__uint8 *) malloc(n * z->s->img_x * z->s->img_y + 1);
      if (!output) { cleanup_jpeg(z); return epuc("outofmem", "Out of memory"); }


      for (j=0; j < z->s->img_y; ++j) {
         stbi__uint8 *out = output + n * z->s->img_x * j;
         for (k=0; k < decode_n; ++k) {
            stbi_resample *r = &res_comp[k];
            int y_bot = r->ystep >= (r->vs >> 1);
            coutput[k] = r->resample(z->img_comp[k].linebuf,
                                     y_bot ? r->line1 : r->line0,
                                     y_bot ? r->line0 : r->line1,
                                     r->w_lores, r->hs);
            if (++r->ystep >= r->vs) {
               r->ystep = 0;
               r->line0 = r->line1;
               if (++r->ypos < z->img_comp[k].y)
                  r->line1 += z->img_comp[k].w2;
            }
         }
         if (n >= 3) {
            stbi__uint8 *y = coutput[0];
            if (z->s->img_n == 3) {



               YCbCr_to_RGB_row(out, y, coutput[1], coutput[2], z->s->img_x, n);

            } else
               for (i=0; i < z->s->img_x; ++i) {
                  out[0] = out[1] = out[2] = y[i];
                  out[3] = 255;
                  out += n;
               }
         } else {
            stbi__uint8 *y = coutput[0];
            if (n == 1)
               for (i=0; i < z->s->img_x; ++i) out[i] = y[i];
            else
               for (i=0; i < z->s->img_x; ++i) *out++ = y[i], *out++ = 255;
         }
      }
      cleanup_jpeg(z);
      *out_x = z->s->img_x;
      *out_y = z->s->img_y;
      if (comp) *comp = z->s->img_n;
      return output;
   }
}
