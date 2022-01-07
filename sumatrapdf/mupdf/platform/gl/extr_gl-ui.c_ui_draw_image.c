
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture {scalar_t__ y; scalar_t__ w; scalar_t__ x; int s; scalar_t__ h; int t; int id; } ;


 int GL_BLEND ;
 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLE_STRIP ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor4f (int,int,int,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glTexCoord2f (int ,int ) ;
 int glVertex2f (scalar_t__,scalar_t__) ;

void ui_draw_image(struct texture *tex, float x, float y)
{
 glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
 glEnable(GL_BLEND);
 glBindTexture(GL_TEXTURE_2D, tex->id);
 glEnable(GL_TEXTURE_2D);
 glBegin(GL_TRIANGLE_STRIP);
 {
  glColor4f(1, 1, 1, 1);
  glTexCoord2f(0, tex->t);
  glVertex2f(x + tex->x, y + tex->y + tex->h);
  glTexCoord2f(0, 0);
  glVertex2f(x + tex->x, y + tex->y);
  glTexCoord2f(tex->s, tex->t);
  glVertex2f(x + tex->x + tex->w, y + tex->y + tex->h);
  glTexCoord2f(tex->s, 0);
  glVertex2f(x + tex->x + tex->w, y + tex->y);
 }
 glEnd();
 glDisable(GL_TEXTURE_2D);
 glDisable(GL_BLEND);
}
