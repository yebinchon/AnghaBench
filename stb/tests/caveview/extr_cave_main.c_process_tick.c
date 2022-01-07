
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int process_tick_raw (float) ;

void process_tick(float dt)
{
   while (dt > 1.0f/60) {
      process_tick_raw(1.0f/60);
      dt -= 1.0f/60;
   }
   process_tick_raw(dt);
}
