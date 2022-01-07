
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; } ;
typedef TYPE_1__ fz_edge ;



__attribute__((used)) static int
cmpedge(const void *va, const void *vb)
{
 const fz_edge *a = va;
 const fz_edge *b = vb;
 return a->y - b->y;
}
