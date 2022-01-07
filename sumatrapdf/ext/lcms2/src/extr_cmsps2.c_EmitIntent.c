
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;






 int _cmsIOPrintf (int ,int *,char*,char const*) ;

__attribute__((used)) static
void EmitIntent(cmsContext ContextID, cmsIOHANDLER* m, cmsUInt32Number RenderingIntent)
{
    const char *intent;

    switch (RenderingIntent) {

        case 130: intent = "Perceptual"; break;
        case 129: intent = "RelativeColorimetric"; break;
        case 131: intent = "AbsoluteColorimetric"; break;
        case 128: intent = "Saturation"; break;

        default: intent = "Undefined"; break;
    }

    _cmsIOPrintf(ContextID, m, "/RenderingIntent (%s)\n", intent );
}
