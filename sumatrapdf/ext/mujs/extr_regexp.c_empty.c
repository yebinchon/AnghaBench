
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; struct TYPE_3__* x; int m; struct TYPE_3__* y; } ;
typedef TYPE_1__ Renode ;
__attribute__((used)) static int empty(Renode *node)
{
 if (!node) return 1;
 switch (node->type) {
 default: return 1;
 case 134: return empty(node->x) && empty(node->y);
 case 136: return empty(node->x) || empty(node->y);
 case 128: return empty(node->x) || node->m == 0;
 case 130: return empty(node->x);
 case 129: return empty(node->x);
 case 135: case 132: case 133: case 131: return 0;
 }
}
