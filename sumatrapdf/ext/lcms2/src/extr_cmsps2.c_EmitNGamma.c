
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_4__ {int nEntries; int Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 int Emit1Gamma (int ,int *,TYPE_1__*) ;
 scalar_t__ GammaTableEquals (int ,int ,int ) ;
 int _cmsIOPrintf (int ,int *,char*) ;

__attribute__((used)) static
void EmitNGamma(cmsContext ContextID, cmsIOHANDLER* m, cmsUInt32Number n, cmsToneCurve* g[])
{
    cmsUInt32Number i;

    for( i=0; i < n; i++ )
    {
        if (g[i] == ((void*)0)) return;

        if (i > 0 && GammaTableEquals(g[i-1]->Table16, g[i]->Table16, g[i]->nEntries)) {

            _cmsIOPrintf(ContextID, m, "dup ");
        }
        else {
            Emit1Gamma(ContextID, m, g[i]);
        }
    }

}
