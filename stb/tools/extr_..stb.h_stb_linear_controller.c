
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void stb_linear_controller(float *curpos, float target_pos, float acc, float deacc, float dt)
{
   float sign = 1, p, cp = *curpos;
   if (cp == target_pos) return;
   if (target_pos < cp) {
      target_pos = -target_pos;
      cp = -cp;
      sign = -1;
   }

   if (cp < 0) {
      p = cp + deacc * dt;
      if (p > 0) {
         p = 0;
         dt = dt - cp / deacc;
         if (dt < 0) dt = 0;
      } else {
         dt = 0;
      }
      cp = p;
   }

   p = cp + acc*dt;
   if (p > target_pos) p = target_pos;
   *curpos = p * sign;

}
