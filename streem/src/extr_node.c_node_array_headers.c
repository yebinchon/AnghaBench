
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ value; int key; } ;
typedef TYPE_1__ node_pair ;
struct TYPE_5__ {int len; int * headers; scalar_t__* data; } ;
typedef TYPE_2__ node_array ;
typedef int node ;


 scalar_t__ NODE_PAIR ;
 int free (TYPE_1__*) ;
 int * malloc (int) ;
 int * node_array_new () ;

node*
node_array_headers(node* np)
{
  int i;
  node_array* v;
  node_string* headers = ((void*)0);

  if (!np)
    np = node_array_new();
  v = (node_array*)np;
  for (i = 0; i < v->len; i++) {
    node_pair* npair = (node_pair*)v->data[i];
    if (npair && npair->type == NODE_PAIR) {
      if (!headers) {
        headers = malloc(sizeof(node_string)*v->len);
      }
      headers[i] = npair->key;
      v->data[i] = npair->value;
      free(npair);
    }
  }
  v->headers = headers;

  return np;
}
