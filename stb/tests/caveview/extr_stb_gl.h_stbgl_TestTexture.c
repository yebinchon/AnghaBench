
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stbgl_TestTextureEx (int,char*,int,int,int,int,int,int,int) ;

int stbgl_TestTexture(int w)
{
   char scale_table[] = { 10,20,30,30,35,40,5,18,25,13,7,5,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0 };
   return stbgl_TestTextureEx(w, scale_table, 2, 140,130,200, 180,200,170);
}
