
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ js_Iterator ;


 int js_free (int *,TYPE_1__*) ;

__attribute__((used)) static void jsG_freeiterator(js_State *J, js_Iterator *node)
{
 while (node) {
  js_Iterator *next = node->next;
  js_free(J, node);
  node = next;
 }
}
