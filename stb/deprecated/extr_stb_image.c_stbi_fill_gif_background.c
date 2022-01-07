
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bgindex; int w; int h; int * out; int ** pal; } ;
typedef TYPE_1__ stbi_gif ;
typedef int stbi__uint8 ;



__attribute__((used)) static void stbi_fill_gif_background(stbi_gif *g)
{
   int i;
   stbi__uint8 *c = g->pal[g->bgindex];

   for (i = 0; i < g->w * g->h * 4; i += 4) {
      stbi__uint8 *p = &g->out[i];
      p[0] = c[2];
      p[1] = c[1];
      p[2] = c[0];
      p[3] = c[3];
   }
}
