
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_7__ {int UsedSpace; } ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int EmitHeader (int ,TYPE_1__*,char*,int ) ;
 int WriteNamedColorCRD (int ,TYPE_1__*,int ,int,int) ;
 int WriteOutputLUT (int ,TYPE_1__*,int ,int,int) ;
 int _cmsIOPrintf (int ,TYPE_1__*,char*) ;
 int cmsFLAGS_NODEFAULTRESOURCEDEF ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 scalar_t__ cmsSigNamedColorClass ;

__attribute__((used)) static
cmsUInt32Number GenerateCRD(cmsContext ContextID,
                             cmsHPROFILE hProfile,
                             cmsUInt32Number Intent, cmsUInt32Number dwFlags,
                             cmsIOHANDLER* mem)
{
    cmsUInt32Number dwBytesUsed;

    if (!(dwFlags & cmsFLAGS_NODEFAULTRESOURCEDEF)) {

        EmitHeader(ContextID, mem, "Color Rendering Dictionary (CRD)", hProfile);
    }



    if (cmsGetDeviceClass(ContextID, hProfile) == cmsSigNamedColorClass) {

        if (!WriteNamedColorCRD(ContextID, mem, hProfile, Intent, dwFlags)) {
            return 0;
        }
    }
    else {



        if (!WriteOutputLUT(ContextID, mem, hProfile, Intent, dwFlags)) {
            return 0;
        }
    }

    if (!(dwFlags & cmsFLAGS_NODEFAULTRESOURCEDEF)) {

        _cmsIOPrintf(ContextID, mem, "%%%%EndResource\n");
        _cmsIOPrintf(ContextID, mem, "\n%% CRD End\n");
    }


    dwBytesUsed = mem ->UsedSpace;


    return dwBytesUsed;
}
