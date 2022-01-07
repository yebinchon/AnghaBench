
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int max; int data; } ;
typedef TYPE_1__ node_nodes ;
typedef int node ;


 int memcpy (int,int,int) ;
 int realloc (int,int) ;

node*
node_nodes_concat(node* s, node* s2)
{
  if (!s) return s2;
  if (s2) {
    node_nodes* v = (node_nodes*)s;
    node_nodes* v2 = (node_nodes*)s2;

    if (v->len + v2->len > v->max) {
      v->max = v->len + v2->len + 10;
      v->data = realloc(v->data, sizeof(void*) * v->max);
    }
    memcpy(v->data+v->len, v2->data, v2->len*sizeof(node*));
    v->len += v2->len;
  }
  return s;
}
