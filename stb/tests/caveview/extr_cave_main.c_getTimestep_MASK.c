#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 () ; 

__attribute__((used)) static float FUNC2(float minimum_time)
{
   float elapsedTime;
   double thisTime;
   static double lastTime = -1;
   
   if (lastTime == -1)
      lastTime = FUNC1() / 1000.0 - minimum_time;

   for(;;) {
      thisTime = FUNC1() / 1000.0;
      elapsedTime = (float) (thisTime - lastTime);
      if (elapsedTime >= minimum_time) {
         lastTime = thisTime;         
         return elapsedTime;
      }
      // @TODO: compute correct delay
      FUNC0(1);
   }
}