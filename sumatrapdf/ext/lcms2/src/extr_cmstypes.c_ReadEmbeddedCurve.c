
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsTagTypeSignature ;
typedef int cmsTagSignature ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 scalar_t__ Type_Curve_Read (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;
 scalar_t__ Type_ParametricCurve_Read (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;
 int _cmsReadTypeBase (int ,int *) ;
 int _cmsTagSignature2String (char*,int ) ;
 int cmsERROR_UNKNOWN_EXTENSION ;


 int cmsSignalError (int ,int ,char*,char*) ;

__attribute__((used)) static
cmsToneCurve* ReadEmbeddedCurve(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io)
{
    cmsTagTypeSignature BaseType;
    cmsUInt32Number nItems;

    BaseType = _cmsReadTypeBase(ContextID, io);
    switch (BaseType) {

            case 129:
                return (cmsToneCurve*) Type_Curve_Read(ContextID, self, io, &nItems, 0);

            case 128:
                return (cmsToneCurve*) Type_ParametricCurve_Read(ContextID, self, io, &nItems, 0);

            default:
                {
                    char String[5];

                    _cmsTagSignature2String(String, (cmsTagSignature) BaseType);
                    cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown curve type '%s'", String);
                }
                return ((void*)0);
    }
}
