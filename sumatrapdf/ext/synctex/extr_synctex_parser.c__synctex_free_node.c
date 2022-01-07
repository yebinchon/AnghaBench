
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* synctex_node_t ;
struct TYPE_10__ {TYPE_1__* class; } ;
struct TYPE_9__ {int (* sibling ) (TYPE_2__*) ;} ;


 int SYNCTEX_CHILD (TYPE_2__*) ;
 int SYNCTEX_FREE (int ) ;
 TYPE_2__* SYNCTEX_SIBLING (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void _synctex_free_node(synctex_node_t node) {

 synctex_node_t next;
 while (node) {
  (*((node->class)->sibling))(node);
  next = SYNCTEX_SIBLING(node);
  SYNCTEX_FREE(SYNCTEX_CHILD(node));
  free(node);
  node = next;
 }
 return;
}
