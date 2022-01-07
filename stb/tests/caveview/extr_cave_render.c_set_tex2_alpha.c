
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_RGBA ;
 int GL_TEXTURE_2D_ARRAY_EXT ;
 int GL_UNSIGNED_BYTE ;
 int glBindTexture (int ,int ) ;
 int glTexSubImage3DEXT (int ,int ,int ,int ,int,int,int,int,int ,int ,int*) ;
 scalar_t__ stb_lerp (float,int ,int) ;
 int** tex2_data ;
 int * voxel_tex ;

void set_tex2_alpha(float fa)
{
   int i;
   int a = (int) stb_lerp(fa, 0, 255);
   if (a < 0) a = 0; else if (a > 255) a = 255;
   glBindTexture(GL_TEXTURE_2D_ARRAY_EXT, voxel_tex[1]);
   for (i=0; i < 64; ++i) {
      tex2_data[i][3] = a;
      glTexSubImage3DEXT(GL_TEXTURE_2D_ARRAY_EXT, 0, 0,0,i, 1,1,1, GL_RGBA, GL_UNSIGNED_BYTE, tex2_data[i]);
   }
}
