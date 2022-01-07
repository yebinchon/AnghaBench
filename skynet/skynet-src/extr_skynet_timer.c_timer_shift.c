
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timer {int time; } ;


 int TIME_LEVEL_MASK ;
 int TIME_LEVEL_SHIFT ;
 int TIME_NEAR ;
 int TIME_NEAR_SHIFT ;
 int move_list (struct timer*,int,int) ;

__attribute__((used)) static void
timer_shift(struct timer *T) {
 int mask = TIME_NEAR;
 uint32_t ct = ++T->time;
 if (ct == 0) {
  move_list(T, 3, 0);
 } else {
  uint32_t time = ct >> TIME_NEAR_SHIFT;
  int i=0;

  while ((ct & (mask-1))==0) {
   int idx=time & TIME_LEVEL_MASK;
   if (idx!=0) {
    move_list(T, i, idx);
    break;
   }
   mask <<= TIME_LEVEL_SHIFT;
   time >>= TIME_LEVEL_SHIFT;
   ++i;
  }
 }
}
