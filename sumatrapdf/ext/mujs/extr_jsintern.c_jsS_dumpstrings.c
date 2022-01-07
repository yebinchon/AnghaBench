
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_StringNode ;
struct TYPE_3__ {int * strings; } ;
typedef TYPE_1__ js_State ;


 int dumpstringnode (int *,int) ;
 int jsS_sentinel ;
 int printf (char*) ;

void jsS_dumpstrings(js_State *J)
{
 js_StringNode *root = J->strings;
 printf("interned strings {\n");
 if (root && root != &jsS_sentinel)
  dumpstringnode(root, 1);
 printf("}\n");
}
