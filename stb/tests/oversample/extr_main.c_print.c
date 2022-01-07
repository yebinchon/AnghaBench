
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t1; int s1; int t0; int s0; int y1; int x1; int y0; int x0; } ;
typedef TYPE_1__ stbtt_aligned_quad ;


 int BITMAP_H ;
 int BITMAP_W ;
 int GL_QUADS ;
 int GL_TEXTURE_2D ;
 int * chardata ;
 int drawBoxTC (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int font_tex ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int integer_align ;
 int stbtt_GetPackedQuad (int ,int ,int ,int ,float*,float*,TYPE_1__*,int ) ;

void print(float x, float y, int font, char *text)
{
   glEnable(GL_TEXTURE_2D);
   glBindTexture(GL_TEXTURE_2D, font_tex);
   glBegin(GL_QUADS);
   while (*text) {
      stbtt_aligned_quad q;
      stbtt_GetPackedQuad(chardata[font], BITMAP_W, BITMAP_H, *text++, &x, &y, &q, font ? 0 : integer_align);
      drawBoxTC(q.x0,q.y0,q.x1,q.y1, q.s0,q.t0,q.s1,q.t1);
   }
   glEnd();
}
