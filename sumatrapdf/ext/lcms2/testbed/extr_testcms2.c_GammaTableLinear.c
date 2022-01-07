
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* cmsUInt16Number ;
struct TYPE_4__ {void** Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef scalar_t__ cmsInt32Number ;
typedef scalar_t__ cmsBool ;


 int DbgThread () ;
 scalar_t__ _cmsQuantizeVal (scalar_t__,scalar_t__) ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,scalar_t__,int *) ;

__attribute__((used)) static
cmsToneCurve* GammaTableLinear(cmsInt32Number nEntries, cmsBool Dir)
{
    cmsInt32Number i;
    cmsToneCurve* g = cmsBuildTabulatedToneCurve16(DbgThread(), nEntries, ((void*)0));

    for (i=0; i < nEntries; i++) {

        cmsInt32Number v = _cmsQuantizeVal(i, nEntries);

        if (Dir)
            g->Table16[i] = (cmsUInt16Number) v;
        else
            g->Table16[i] = (cmsUInt16Number) (0xFFFF - v);
    }

    return g;
}
