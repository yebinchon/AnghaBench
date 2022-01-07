
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {size_t nCurves; TYPE_1__** TheCurves; } ;
typedef TYPE_2__ _cmsStageToneCurvesData ;
struct TYPE_4__ {size_t nEntries; int * Table16; } ;


 int FALSE ;
 int TRUE ;
 int _cmsAssert (int ) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;

__attribute__((used)) static
cmsBool Write16bitTables(cmsContext ContextID, cmsIOHANDLER* io, _cmsStageToneCurvesData* Tables)
{
    cmsUInt32Number j;
    cmsUInt32Number i;
    cmsUInt16Number val;
    cmsUInt32Number nEntries;

    _cmsAssert(Tables != ((void*)0));

    nEntries = Tables->TheCurves[0]->nEntries;

    for (i=0; i < Tables ->nCurves; i++) {

        for (j=0; j < nEntries; j++) {

            val = Tables->TheCurves[i]->Table16[j];
            if (!_cmsWriteUInt16Number(ContextID, io, val)) return FALSE;
        }
    }
    return TRUE;
}
