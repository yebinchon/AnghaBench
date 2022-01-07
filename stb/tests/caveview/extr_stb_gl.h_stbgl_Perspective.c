
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_VIEWPORT ;
 scalar_t__ atan (float) ;
 int glGetIntegerv (int ,int*) ;
 int gluPerspective (float,float,float,float) ;
 int stbgl_deg2rad (float) ;
 scalar_t__ stbgl_rad2deg (float) ;
 scalar_t__ tan (int ) ;

void stbgl_Perspective(float zoom, float max_hfov, float max_vfov, float znear, float zfar)
{
   float unit_width, unit_height, aspect, vfov;
   int data[4],w,h;
   glGetIntegerv(GL_VIEWPORT, data);
   w = data[2];
   h = data[3];
   aspect = (float) w / h;

   if (max_hfov <= 0) max_hfov = 179;
   if (max_vfov <= 0) max_vfov = 179;


   unit_width = (float) tan(stbgl_deg2rad(max_hfov/2)) * 2;
   unit_height = (float) tan(stbgl_deg2rad(max_vfov/2)) * 2;

   if (unit_width <= aspect * unit_height) {
      float height = unit_width / aspect;
      vfov = (float) atan(( height/2) / zoom);
   } else {
      vfov = (float) atan((unit_height/2) / zoom);
   }
   vfov = (float) stbgl_rad2deg(vfov * 2);
   gluPerspective(vfov, aspect, znear, zfar);
}
