
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ js_JumpList ;


 int js_free (int *,TYPE_1__*) ;

__attribute__((used)) static void jsP_freejumps(js_State *J, js_JumpList *node)
{
 while (node) {
  js_JumpList *next = node->next;
  js_free(J, node);
  node = next;
 }
}
