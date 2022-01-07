
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* E; } ;
typedef TYPE_2__ js_State ;
struct TYPE_6__ {int variables; } ;


 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int jsR_defproperty (TYPE_2__*,int ,char const*,int,int ,int *,int *) ;
 int stackidx (TYPE_2__*,int) ;

__attribute__((used)) static void js_initvar(js_State *J, const char *name, int idx)
{
 jsR_defproperty(J, J->E->variables, name, JS_DONTENUM | JS_DONTCONF, stackidx(J, idx), ((void*)0), ((void*)0));
}
