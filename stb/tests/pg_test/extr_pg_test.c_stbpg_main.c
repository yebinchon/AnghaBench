
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* hf ;
 int hf_height ;
 int hf_width ;
 unsigned short* malloc (int) ;
 unsigned short* stb_file (char*,int *) ;
 int stb_filewrite (char*,unsigned short*,int) ;
 unsigned short* stbi_load_16 (char*,int*,int*,int*,int) ;
 int stbpg_gl_compat_version (int,int) ;
 int stbpg_run () ;
 int stbpg_windowed (char*,int,int) ;

void stbpg_main(int argc, char **argv)
{
   int i,j;






   unsigned short *data = stb_file("c:/x/ned_1m/x73_y428_10012_10012.bin", ((void*)0));
   int w=10012, h = 10012;


   hf = malloc(hf_width * hf_height * 4);
   for (j=0; j < hf_height; ++j)
      for (i=0; i < hf_width; ++i)
         hf[j*hf_width+i] = data[j*w+i] / 32.0f;

   stbpg_gl_compat_version(1,1);
   stbpg_windowed("terrain_edit", 1920, 1080);
   stbpg_run();

   return;
}
