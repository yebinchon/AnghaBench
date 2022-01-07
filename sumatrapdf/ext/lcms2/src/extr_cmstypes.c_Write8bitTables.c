
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {TYPE_1__** TheCurves; } ;
typedef TYPE_2__ _cmsStageToneCurvesData ;
struct TYPE_4__ {int nEntries; int* Table16; } ;


 int FALSE ;
 scalar_t__ FROM_16_TO_8 (int) ;
 int TRUE ;
 int _cmsWriteUInt8Number (int ,int *,scalar_t__) ;
 int cmsERROR_RANGE ;
 int cmsSignalError (int ,int ,char*) ;

__attribute__((used)) static
cmsBool Write8bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsUInt32Number n, _cmsStageToneCurvesData* Tables)
{
    int j;
    cmsUInt32Number i;
    cmsUInt8Number val;

    for (i=0; i < n; i++) {

        if (Tables) {


            if ((Tables ->TheCurves[i]->nEntries == 2) &&
                (Tables->TheCurves[i]->Table16[0] == 0) &&
                (Tables->TheCurves[i]->Table16[1] == 65535)) {

                    for (j=0; j < 256; j++) {
                        if (!_cmsWriteUInt8Number(ContextID, io, (cmsUInt8Number) j)) return FALSE;
                    }
            }
            else
                if (Tables ->TheCurves[i]->nEntries != 256) {
                    cmsSignalError(ContextID, cmsERROR_RANGE, "LUT8 needs 256 entries on prelinearization");
                    return FALSE;
                }
                else
                    for (j=0; j < 256; j++) {

                        val = (cmsUInt8Number) FROM_16_TO_8(Tables->TheCurves[i]->Table16[j]);

                        if (!_cmsWriteUInt8Number(ContextID, io, val)) return FALSE;
                    }
        }
    }
    return TRUE;
}
