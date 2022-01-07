
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t strm_int ;
struct TYPE_5__ {size_t len; struct TYPE_5__* data; } ;
typedef TYPE_1__ node_nodes ;


 int free (TYPE_1__*) ;
 int node_free (TYPE_1__) ;

void
node_nodes_free(node_nodes* v)
{
  strm_int i;

  for (i = 0; i < v->len; i++)
    node_free(v->data[i]);
  free(v->data);
  free(v);
}
