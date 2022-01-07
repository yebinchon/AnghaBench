
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int CHECKSTACK (int) ;
 int * STACK ;
 size_t TOP ;
 int * stackidx (int *,int) ;

void js_copy(js_State *J, int idx)
{
 CHECKSTACK(1);
 STACK[TOP] = *stackidx(J, idx);
 ++TOP;
}
