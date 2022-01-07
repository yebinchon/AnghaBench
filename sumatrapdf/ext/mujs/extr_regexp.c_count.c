
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cstate {int dummy; } ;
struct TYPE_3__ {int type; int m; int n; struct TYPE_3__* x; struct TYPE_3__* y; } ;
typedef TYPE_1__ Renode ;


 int MAXPROG ;






 int REPINF ;
 int die (struct cstate*,char*) ;

__attribute__((used)) static int count(struct cstate *g, Renode *node)
{
 int min, max, n;
 if (!node) return 0;
 switch (node->type) {
 default: return 1;
 case 132: return count(g, node->x) + count(g, node->y);
 case 133: return count(g, node->x) + count(g, node->y) + 2;
 case 128:
  min = node->m;
  max = node->n;
  if (min == max) n = count(g, node->x) * min;
  else if (max < REPINF) n = count(g, node->x) * max + (max - min);
  else n = count(g, node->x) * (min + 1) + 2;
  if (n < 0 || n > MAXPROG) die(g, "program too large");
  return n;
 case 130: return count(g, node->x) + 2;
 case 129: return count(g, node->x) + 2;
 case 131: return count(g, node->x) + 2;
 }
}
