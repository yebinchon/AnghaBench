
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_9__ {struct TYPE_9__* Next; } ;
typedef TYPE_1__ cmsStage ;
struct TYPE_10__ {TYPE_1__* Elements; } ;
typedef TYPE_2__ cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int cmsCIEXYZ ;


 int EmitIntent (int ,int *,int ) ;
 int EmitLab2XYZ (int ,int *) ;
 int EmitNGamma (int ,int *,int ,int ) ;
 int EmitWhiteBlackD50 (int ,int *,int *) ;
 int FALSE ;
 int WriteCLUT (int ,int *,TYPE_1__*,char const*,char const*,char const*,char const*,int ,int ) ;
 int _cmsIOPrintf (int ,int *,char*) ;
 int _cmsStageGetPtrToCurveSet (TYPE_1__*) ;
 scalar_t__ cmsSigCLutElemType ;
 scalar_t__ cmsSigCurveSetElemType ;
 int cmsStageInputChannels (int ,TYPE_1__*) ;
 int cmsStageOutputChannels (int ,TYPE_1__*) ;
 scalar_t__ cmsStageType (int ,TYPE_1__*) ;

__attribute__((used)) static
int EmitCIEBasedDEF(cmsContext ContextID, cmsIOHANDLER* m, cmsPipeline* Pipeline, cmsUInt32Number Intent, cmsCIEXYZ* BlackPoint)
{
    const char* PreMaj;
    const char* PostMaj;
    const char* PreMin, *PostMin;
    cmsStage* mpe;

    mpe = Pipeline ->Elements;

    switch (cmsStageInputChannels(ContextID, mpe)) {
    case 3:

            _cmsIOPrintf(ContextID, m, "[ /CIEBasedDEF\n");
            PreMaj ="<";
            PostMaj= ">\n";
            PreMin = PostMin = "";
            break;
    case 4:
            _cmsIOPrintf(ContextID, m, "[ /CIEBasedDEFG\n");
            PreMaj = "[";
            PostMaj = "]\n";
            PreMin = "<";
            PostMin = ">\n";
            break;
    default:
            return 0;

    }

    _cmsIOPrintf(ContextID, m, "<<\n");

    if (cmsStageType(ContextID, mpe) == cmsSigCurveSetElemType) {

        _cmsIOPrintf(ContextID, m, "/DecodeDEF [ ");
        EmitNGamma(ContextID, m, cmsStageOutputChannels(ContextID, mpe), _cmsStageGetPtrToCurveSet(mpe));
        _cmsIOPrintf(ContextID, m, "]\n");

        mpe = mpe ->Next;
    }

    if (cmsStageType(ContextID, mpe) == cmsSigCLutElemType) {

            _cmsIOPrintf(ContextID, m, "/Table ");
            WriteCLUT(ContextID, m, mpe, PreMaj, PostMaj, PreMin, PostMin, FALSE, (cmsColorSpaceSignature) 0);
            _cmsIOPrintf(ContextID, m, "]\n");
    }

    EmitLab2XYZ(ContextID, m);
    EmitWhiteBlackD50(ContextID, m, BlackPoint);
    EmitIntent(ContextID, m, Intent);

    _cmsIOPrintf(ContextID, m, "   >>\n");
    _cmsIOPrintf(ContextID, m, "]\n");

    return 1;
}
