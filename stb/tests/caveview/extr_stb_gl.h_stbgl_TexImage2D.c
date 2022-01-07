
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stbgl_TexImage2D_Extra (int,int,int,void*,int ,char*,int) ;

int stbgl_TexImage2D(int texid, int w, int h, void *data, char *props)
{
   return stbgl_TexImage2D_Extra(texid, w, h, data, 0, props,1);
}
