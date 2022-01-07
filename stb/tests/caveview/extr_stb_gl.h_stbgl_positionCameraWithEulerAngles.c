
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glRotatef (float,int,int,int) ;
 int glTranslatef (float,float,float) ;

void stbgl_positionCameraWithEulerAngles(float *loc, float *ang)
{
   glRotatef(-ang[1], 0,1,0);
   glRotatef(-ang[0], 1,0,0);
   glRotatef(-ang[2], 0,0,1);
   glTranslatef(-loc[0], -loc[1], -loc[2]);
}
