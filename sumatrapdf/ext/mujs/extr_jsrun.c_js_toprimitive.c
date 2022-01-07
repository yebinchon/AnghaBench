
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_toprimitive (int *,int ,int) ;
 int stackidx (int *,int) ;

void js_toprimitive(js_State *J, int idx, int hint)
{
 jsV_toprimitive(J, stackidx(J, idx), hint);
}
