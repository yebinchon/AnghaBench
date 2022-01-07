
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double TICKRATE ;
 float carried_dt ;
 int draw () ;
 int global_hack ;
 float global_timer ;
 int initialized ;
 int process_tick (float) ;
 int tex2_alpha ;

int loopmode(float dt, int real, int in_client)
{
   if (!initialized) return 0;

   if (!real)
      return 0;


   if (dt > 0.075) dt = 0.075;

   global_timer += dt;

   carried_dt += dt;
   while (carried_dt > 1.0/TICKRATE) {
      if (global_hack) {
         tex2_alpha += global_hack / 60.0f;
         if (tex2_alpha < 0) tex2_alpha = 0;
         if (tex2_alpha > 1) tex2_alpha = 1;
      }


      carried_dt -= 1.0/TICKRATE;
   }

   process_tick(dt);
   draw();

   return 0;
}
