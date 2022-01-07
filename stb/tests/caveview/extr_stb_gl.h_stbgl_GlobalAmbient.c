
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_LIGHT_MODEL_AMBIENT ;
 int glLightModelfv (int ,float*) ;

void stbgl_GlobalAmbient(float r, float g, float b)
{
   float v[4] = { r,g,b,0 };
   glLightModelfv(GL_LIGHT_MODEL_AMBIENT, v);
}
