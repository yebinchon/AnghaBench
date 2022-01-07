
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_6__ {int Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int Tables ;


 int FALSE ;
 int TRUE ;
 int _cmsReadUInt16Array (int ,int *,int,int ) ;
 int cmsAT_END ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int cmsFreeToneCurve (int ,TYPE_1__*) ;
 int cmsMAXCHANNELS ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocToneCurves (int ,int,TYPE_1__**) ;
 int memset (TYPE_1__**,int ,int) ;

__attribute__((used)) static
cmsBool Read16bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut,
                                    cmsUInt32Number nChannels, cmsUInt32Number nEntries)
{
    cmsUInt32Number i;
    cmsToneCurve* Tables[cmsMAXCHANNELS];


    if (nEntries <= 0) return TRUE;


    if (nEntries < 2) return FALSE;
    if (nChannels > cmsMAXCHANNELS) return FALSE;


    memset(Tables, 0, sizeof(Tables));

    for (i=0; i < nChannels; i++) {

        Tables[i] = cmsBuildTabulatedToneCurve16(ContextID, nEntries, ((void*)0));
        if (Tables[i] == ((void*)0)) goto Error;

        if (!_cmsReadUInt16Array(ContextID, io, nEntries, Tables[i]->Table16)) goto Error;
    }



    if (!cmsPipelineInsertStage(ContextID, lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        cmsFreeToneCurve(ContextID, Tables[i]);

    return TRUE;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) cmsFreeToneCurve(ContextID, Tables[i]);
    }

    return FALSE;
}
