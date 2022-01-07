
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BLEND ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_QUADS ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 int g_cache_tex ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glBlendFunc (int ,int ) ;
 int glEnable (int ) ;

__attribute__((used)) static void ui_begin_text(void)
{
 glBindTexture(GL_TEXTURE_2D, g_cache_tex);
 glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
 glEnable(GL_BLEND);
 glEnable(GL_TEXTURE_2D);
 glBegin(GL_QUADS);
}
