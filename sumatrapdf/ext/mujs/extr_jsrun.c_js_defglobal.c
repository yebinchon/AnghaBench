
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int G; } ;
typedef TYPE_1__ js_State ;


 int jsR_defproperty (TYPE_1__*,int ,char const*,int,int ,int *,int *) ;
 int js_pop (TYPE_1__*,int) ;
 int stackidx (TYPE_1__*,int) ;

void js_defglobal(js_State *J, const char *name, int atts)
{
 jsR_defproperty(J, J->G, name, atts, stackidx(J, -1), ((void*)0), ((void*)0));
 js_pop(J, 1);
}
