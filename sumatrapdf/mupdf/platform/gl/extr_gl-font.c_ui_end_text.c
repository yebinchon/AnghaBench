
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BLEND ;
 int GL_TEXTURE_2D ;
 int glDisable (int ) ;
 int glEnd () ;

__attribute__((used)) static void ui_end_text(void)
{
 glEnd();
 glDisable(GL_TEXTURE_2D);
 glDisable(GL_BLEND);
}
