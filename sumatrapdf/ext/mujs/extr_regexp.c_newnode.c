
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cstate {int pend; } ;
struct TYPE_3__ {int type; int * y; int x; scalar_t__ n; scalar_t__ m; scalar_t__ ng; scalar_t__ c; int * cc; } ;
typedef TYPE_1__ Renode ;



__attribute__((used)) static Renode *newnode(struct cstate *g, int type)
{
 Renode *node = g->pend++;
 node->type = type;
 node->cc = ((void*)0);
 node->c = 0;
 node->ng = 0;
 node->m = 0;
 node->n = 0;
 node->x = node->y = ((void*)0);
 return node;
}
