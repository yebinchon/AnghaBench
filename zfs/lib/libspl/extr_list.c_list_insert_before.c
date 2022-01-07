
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;
typedef int list_node_t ;


 int * list_d2l (int *,void*) ;
 int list_insert_before_node (int *,int *,void*) ;
 int list_insert_tail (int *,void*) ;

void
list_insert_before(list_t *list, void *object, void *nobject)
{
 if (object == ((void*)0)) {
  list_insert_tail(list, nobject);
 } else {
  list_node_t *lold = list_d2l(list, object);
  list_insert_before_node(list, lold, nobject);
 }
}
