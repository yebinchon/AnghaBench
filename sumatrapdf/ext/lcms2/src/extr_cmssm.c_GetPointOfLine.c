
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* n; } ;
typedef TYPE_3__ cmsVEC3 ;
struct TYPE_8__ {int* n; } ;
struct TYPE_7__ {scalar_t__* n; } ;
struct TYPE_10__ {TYPE_2__ u; TYPE_1__ a; } ;
typedef TYPE_4__ cmsLine ;
typedef int cmsFloat64Number ;


 size_t VX ;
 size_t VY ;
 size_t VZ ;

__attribute__((used)) static
void GetPointOfLine(cmsVEC3* p, const cmsLine* line, cmsFloat64Number t)
{
    p ->n[VX] = line ->a.n[VX] + t * line->u.n[VX];
    p ->n[VY] = line ->a.n[VY] + t * line->u.n[VY];
    p ->n[VZ] = line ->a.n[VZ] + t * line->u.n[VZ];
}
