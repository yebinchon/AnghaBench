
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_7__ {int nSegments; TYPE_1__* Segments; } ;
typedef TYPE_2__ cmsToneCurve ;
typedef int cmsTagTypeSignature ;
typedef int cmsTagSignature ;
typedef int cmsStage ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_6__ {scalar_t__ Type; } ;


 int FALSE ;
 int TRUE ;
 int Type_Curve_Write (int ,struct _cms_typehandler_struct*,int *,TYPE_2__*,int) ;
 int Type_ParametricCurve_Write (int ,struct _cms_typehandler_struct*,int *,TYPE_2__*,int) ;
 TYPE_2__** _cmsStageGetPtrToCurveSet (int *) ;
 int _cmsTagSignature2String (char*,int ) ;
 int _cmsWriteAlignment (int ,int *) ;
 int _cmsWriteTypeBase (int ,int *,int) ;
 int cmsERROR_UNKNOWN_EXTENSION ;


 int cmsSignalError (int ,int ,char*,char*) ;
 size_t cmsStageOutputChannels (int ,int *) ;

__attribute__((used)) static
cmsBool WriteSetOfCurves(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsTagTypeSignature Type, cmsStage* mpe)
{
    cmsUInt32Number i, n;
    cmsTagTypeSignature CurrentType;
    cmsToneCurve** Curves;


    n = cmsStageOutputChannels(ContextID, mpe);
    Curves = _cmsStageGetPtrToCurveSet(mpe);

    for (i=0; i < n; i++) {


        CurrentType = Type;

        if ((Curves[i] ->nSegments == 0)||
            ((Curves[i]->nSegments == 2) && (Curves[i] ->Segments[1].Type == 0)) )
            CurrentType = 129;
        else
        if (Curves[i] ->Segments[0].Type < 0)
            CurrentType = 129;

        if (!_cmsWriteTypeBase(ContextID, io, CurrentType)) return FALSE;

        switch (CurrentType) {

            case 129:
                if (!Type_Curve_Write(ContextID, self, io, Curves[i], 1)) return FALSE;
                break;

            case 128:
                if (!Type_ParametricCurve_Write(ContextID, self, io, Curves[i], 1)) return FALSE;
                break;

            default:
                {
                    char String[5];

                    _cmsTagSignature2String(String, (cmsTagSignature) Type);
                    cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown curve type '%s'", String);
                }
                return FALSE;
        }

        if (!_cmsWriteAlignment(ContextID, io)) return FALSE;
    }


    return TRUE;
}
