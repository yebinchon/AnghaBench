
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_ALPHA ;
 int GL_CLAMP ;
 int GL_NEAREST ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNSIGNED_BYTE ;
 int clear_font_cache () ;
 int ctx ;
 unsigned char* fz_lookup_builtin_font (int ,char*,int ,int ,int*) ;
 int fz_new_font_from_memory (int ,int *,unsigned char const*,int,int ,int ) ;
 int g_cache_h ;
 int g_cache_tex ;
 int g_cache_w ;
 int g_font ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int glTexParameteri (int ,int ,int ) ;

void ui_init_fonts(void)
{
 const unsigned char *data;
 int size;

 glGenTextures(1, &g_cache_tex);
 glBindTexture(GL_TEXTURE_2D, g_cache_tex);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
 glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
 glTexImage2D(GL_TEXTURE_2D, 0, GL_ALPHA, g_cache_w, g_cache_h, 0, GL_ALPHA, GL_UNSIGNED_BYTE, ((void*)0));

 clear_font_cache();

 data = fz_lookup_builtin_font(ctx, "Charis SIL", 0, 0, &size);
 if (!data)
  data = fz_lookup_builtin_font(ctx, "Times", 0, 0, &size);
 g_font = fz_new_font_from_memory(ctx, ((void*)0), data, size, 0, 0);
}
