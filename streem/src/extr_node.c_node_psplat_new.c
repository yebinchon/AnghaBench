
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tail; int * mid; int * head; int type; } ;
typedef TYPE_1__ node_psplat ;
typedef int node ;


 int NODE_PSPLAT ;
 TYPE_1__* malloc (int) ;

node*
node_psplat_new(node* head, node* mid, node* tail)
{
  node_psplat* cons = malloc(sizeof(node_psplat));
  cons->type = NODE_PSPLAT;
  cons->head = head;
  cons->mid = mid;
  cons->tail = tail;
  return (node*)cons;
}
