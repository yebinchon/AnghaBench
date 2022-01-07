
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* v; scalar_t__ dx; int x; } ;
typedef TYPE_1__ edge_data ;


 int MAXN ;

__attribute__((used)) static inline void step_edge(edge_data *edge, int n)
{
 int i;

 edge->x += edge->dx;

 for (i = 0; i < n; i++)
 {
  edge->v[i] += edge->v[i + MAXN];
 }
}
