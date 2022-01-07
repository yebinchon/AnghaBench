
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;


 int * stackidx (int *,int) ;

js_Value *js_tovalue(js_State *J, int idx)
{
 return stackidx(J, idx);
}
