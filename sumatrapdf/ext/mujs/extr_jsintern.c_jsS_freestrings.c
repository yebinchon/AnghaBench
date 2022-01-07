
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * strings; } ;
typedef TYPE_1__ js_State ;


 int jsS_freestringnode (TYPE_1__*,int *) ;
 int jsS_sentinel ;

void jsS_freestrings(js_State *J)
{
 if (J->strings && J->strings != &jsS_sentinel)
  jsS_freestringnode(J, J->strings);
}
