
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentThread () ;
 int SetThreadPriority (int ,int) ;
 int THREAD_PRIORITY_ABOVE_NORMAL ;
 int THREAD_PRIORITY_BELOW_NORMAL ;
 int THREAD_PRIORITY_HIGHEST ;
 int THREAD_PRIORITY_LOWEST ;
 int THREAD_PRIORITY_NORMAL ;

void stbwingraph_Priority(int n)
{
   int p;
   switch (n) {
      case -1: p = THREAD_PRIORITY_BELOW_NORMAL; break;
      case 0: p = THREAD_PRIORITY_NORMAL; break;
      case 1: p = THREAD_PRIORITY_ABOVE_NORMAL; break;
      default:
         if (n < 0) p = THREAD_PRIORITY_LOWEST;
         else p = THREAD_PRIORITY_HIGHEST;
   }
   SetThreadPriority(GetCurrentThread(), p);
}
