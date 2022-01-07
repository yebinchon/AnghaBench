
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glRotatef (int,int,int ,int ) ;

void stbgl_initCamera_zup_facing_y(void)
{
   glRotatef(-90, 1,0,0);
}
