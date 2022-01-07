
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int BOT ;
 int * STACK ;
 int TOP ;
 int js_error (int *,char*) ;

void js_remove(js_State *J, int idx)
{
 idx = idx < 0 ? TOP + idx : BOT + idx;
 if (idx < BOT || idx >= TOP)
  js_error(J, "stack error!");
 for (;idx < TOP - 1; ++idx)
  STACK[idx] = STACK[idx+1];
 --TOP;
}
