
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stbi__uint8 ;
typedef int stbi__uint32 ;
struct TYPE_6__ {int * out; TYPE_1__* s; } ;
typedef TYPE_2__ png ;
struct TYPE_5__ {int img_x; int img_y; } ;


 int create_png_image_raw (TYPE_2__*,int *,int,int,int,int) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int stbi_png_partial ;

__attribute__((used)) static int create_png_image(png *a, stbi__uint8 *raw, stbi__uint32 raw_len, int out_n, int interlaced)
{
   stbi__uint8 *final;
   int p;
   int save;
   if (!interlaced)
      return create_png_image_raw(a, raw, raw_len, out_n, a->s->img_x, a->s->img_y);
   save = stbi_png_partial;
   stbi_png_partial = 0;


   final = (stbi__uint8 *) malloc(a->s->img_x * a->s->img_y * out_n);
   for (p=0; p < 7; ++p) {
      int xorig[] = { 0,4,0,2,0,1,0 };
      int yorig[] = { 0,0,4,0,2,0,1 };
      int xspc[] = { 8,8,4,4,2,2,1 };
      int yspc[] = { 8,8,8,4,4,2,2 };
      int i,j,x,y;

      x = (a->s->img_x - xorig[p] + xspc[p]-1) / xspc[p];
      y = (a->s->img_y - yorig[p] + yspc[p]-1) / yspc[p];
      if (x && y) {
         if (!create_png_image_raw(a, raw, raw_len, out_n, x, y)) {
            free(final);
            return 0;
         }
         for (j=0; j < y; ++j)
            for (i=0; i < x; ++i)
               memcpy(final + (j*yspc[p]+yorig[p])*a->s->img_x*out_n + (i*xspc[p]+xorig[p])*out_n,
                      a->out + (j*x+i)*out_n, out_n);
         free(a->out);
         raw += (x*out_n+1)*y;
         raw_len -= (x*out_n+1)*y;
      }
   }
   a->out = final;

   stbi_png_partial = save;
   return 1;
}
