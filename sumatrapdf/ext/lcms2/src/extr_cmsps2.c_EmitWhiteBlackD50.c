
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_4__ {int Z; int Y; int X; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_5__ {int Z; int Y; int X; } ;


 int _cmsIOPrintf (int ,int *,char*,int ,int ,int ) ;
 TYPE_2__* cmsD50_XYZ (int ) ;

__attribute__((used)) static
void EmitWhiteBlackD50(cmsContext ContextID, cmsIOHANDLER* m, cmsCIEXYZ* BlackPoint)
{

    _cmsIOPrintf(ContextID, m, "/BlackPoint [%f %f %f]\n", BlackPoint -> X,
                                          BlackPoint -> Y,
                                          BlackPoint -> Z);

    _cmsIOPrintf(ContextID, m, "/WhitePoint [%f %f %f]\n", cmsD50_XYZ(ContextID)->X,
                                          cmsD50_XYZ(ContextID)->Y,
                                          cmsD50_XYZ(ContextID)->Z);
}
