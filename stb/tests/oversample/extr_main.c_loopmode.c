
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw () ;
 int initialized ;
 float rotate_t ;
 float translate_t ;

int loopmode(float dt, int real, int in_client)
{
   float actual_dt = dt;

   if (!initialized) return 0;

   rotate_t += dt;
   translate_t += dt;


   if (!real)
      return 0;

   if (dt > 0.25) dt = 0.25;
   if (dt < 0.01) dt = 0.01;

   draw();

   return 0;
}
