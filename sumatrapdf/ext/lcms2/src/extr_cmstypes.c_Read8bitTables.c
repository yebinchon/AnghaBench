
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
struct TYPE_9__ {scalar_t__* Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsPipeline ;
struct TYPE_10__ {int (* Read ) (int ,TYPE_2__*,int *,int,int) ;} ;
typedef TYPE_2__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int Tables ;


 int FALSE ;
 scalar_t__ FROM_8_TO_16 (int ) ;
 int TRUE ;
 int _cmsFree (int ,int *) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int cmsAT_END ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int cmsFreeToneCurve (int ,TYPE_1__*) ;
 int cmsMAXCHANNELS ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocToneCurves (int ,int,TYPE_1__**) ;
 int memset (TYPE_1__**,int ,int) ;
 int stub1 (int ,TYPE_2__*,int *,int,int) ;

__attribute__((used)) static
cmsBool Read8bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut, cmsUInt32Number nChannels)
{
    cmsUInt8Number* Temp = ((void*)0);
    cmsUInt32Number i, j;
    cmsToneCurve* Tables[cmsMAXCHANNELS];

    if (nChannels > cmsMAXCHANNELS) return FALSE;
    if (nChannels <= 0) return FALSE;

    memset(Tables, 0, sizeof(Tables));

    Temp = (cmsUInt8Number*) _cmsMalloc(ContextID, 256);
    if (Temp == ((void*)0)) return FALSE;

    for (i=0; i < nChannels; i++) {
        Tables[i] = cmsBuildTabulatedToneCurve16(ContextID, 256, ((void*)0));
        if (Tables[i] == ((void*)0)) goto Error;
    }

    for (i=0; i < nChannels; i++) {

        if (io ->Read(ContextID, io, Temp, 256, 1) != 1) goto Error;

        for (j=0; j < 256; j++)
            Tables[i]->Table16[j] = (cmsUInt16Number) FROM_8_TO_16(Temp[j]);
    }

    _cmsFree(ContextID, Temp);
    Temp = ((void*)0);

    if (!cmsPipelineInsertStage(ContextID, lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        cmsFreeToneCurve(ContextID, Tables[i]);

    return TRUE;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) cmsFreeToneCurve(ContextID, Tables[i]);
    }

    if (Temp) _cmsFree(ContextID, Temp);
    return FALSE;
}
