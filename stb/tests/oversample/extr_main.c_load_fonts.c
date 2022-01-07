
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_pack_context ;
typedef int FILE ;


 int BITMAP_H ;
 int BITMAP_W ;
 int GL_ALPHA ;
 int GL_LINEAR ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNSIGNED_BYTE ;
 scalar_t__* chardata ;
 int exit (int ) ;
 int font_tex ;
 int * fopen (char*,char*) ;
 int fread (int ,int,int,int *) ;
 char* getenv (char*) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int glTexParameteri (int ,int ,int ) ;
 int * scale ;
 int sprintf (char*,char*,char*) ;
 char* stb_wingraph_commandline ;
 int stbtt_PackBegin (int *,int ,int ,int ,int ,int,int *) ;
 int stbtt_PackEnd (int *) ;
 int stbtt_PackFontRange (int *,int ,int ,int ,int,int,scalar_t__) ;
 int stbtt_PackSetOversampling (int *,int,int) ;
 int * temp_bitmap ;
 int ttf_buffer ;

void load_fonts(void)
{
   stbtt_pack_context pc;
   int i;
   FILE *f;
   char filename[256];
   char *win = getenv("windir");
   if (win == ((void*)0)) win = getenv("SystemRoot");

   f = fopen(stb_wingraph_commandline, "rb");
   if (!f) {
      if (win == ((void*)0))
         sprintf(filename, "arial.ttf", win);
      else
         sprintf(filename, "%s/fonts/arial.ttf", win);
      f = fopen(filename, "rb");
      if (!f) exit(0);
   }

   fread(ttf_buffer, 1, 1<<25, f);

   stbtt_PackBegin(&pc, temp_bitmap[0], BITMAP_W, BITMAP_H, 0, 1, ((void*)0));
   for (i=0; i < 2; ++i) {
      stbtt_PackSetOversampling(&pc, 1, 1);
      stbtt_PackFontRange(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+0]+32);
      stbtt_PackSetOversampling(&pc, 2, 2);
      stbtt_PackFontRange(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+1]+32);
      stbtt_PackSetOversampling(&pc, 3, 1);
      stbtt_PackFontRange(&pc, ttf_buffer, 0, scale[i], 32, 95, chardata[i*3+2]+32);
   }
   stbtt_PackEnd(&pc);

   glGenTextures(1, &font_tex);
   glBindTexture(GL_TEXTURE_2D, font_tex);
   glTexImage2D(GL_TEXTURE_2D, 0, GL_ALPHA, BITMAP_W, BITMAP_H, 0, GL_ALPHA, GL_UNSIGNED_BYTE, temp_bitmap);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
}
