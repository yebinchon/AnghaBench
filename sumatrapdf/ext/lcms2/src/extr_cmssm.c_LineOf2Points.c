
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* n; } ;
typedef TYPE_1__ cmsVEC3 ;
struct TYPE_7__ {int u; int a; } ;
typedef TYPE_2__ cmsLine ;
typedef int cmsContext ;


 size_t VX ;
 size_t VY ;
 size_t VZ ;
 int _cmsVEC3init (int ,int *,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static
void LineOf2Points(cmsContext ContextID, cmsLine* line, cmsVEC3* a, cmsVEC3* b)
{

    _cmsVEC3init(ContextID, &line ->a, a ->n[VX], a ->n[VY], a ->n[VZ]);
    _cmsVEC3init(ContextID, &line ->u, b ->n[VX] - a ->n[VX],
                            b ->n[VY] - a ->n[VY],
                            b ->n[VZ] - a ->n[VZ]);
}
