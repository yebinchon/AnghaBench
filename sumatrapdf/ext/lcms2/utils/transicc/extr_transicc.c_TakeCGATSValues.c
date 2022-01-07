
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;


 int CGATSPatch ;
 int FatalError (char*,...) ;
 double GetIT8Val (int ,char*,double) ;
 int InputColorSpace ;
 scalar_t__ InputNamedColor ;
 int cmsChannelsOf (int ,int) ;
 int * cmsGetNamedColorList (int ) ;
 double cmsIT8GetDataDbl (int ,int ,int ,char*) ;
 int * cmsIT8GetPatchName (int ,int ,int,int ) ;
 int cmsNamedColorIndex (int ,int const*,int ) ;
 int hIT8in ;
 int hTrans ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static
    void TakeCGATSValues(cmsContext ContextID, int nPatch, cmsFloat64Number Float[])
{


    if (cmsIT8GetPatchName(ContextID, hIT8in, nPatch, CGATSPatch) == ((void*)0)) {
        FatalError("Sorry, I need 'SAMPLE_ID' on input CGATS to operate.");
    }





    if (InputNamedColor) {

        const cmsNAMEDCOLORLIST* NamedColorList;
        int index;

        NamedColorList = cmsGetNamedColorList(hTrans);
        if (NamedColorList == ((void*)0))
            FatalError("Malformed named color profile");

        index = cmsNamedColorIndex(ContextID, NamedColorList, CGATSPatch);
        if (index < 0)
            FatalError("Named color '%s' not found in the profile", CGATSPatch);

        Float[0] = index;
        return;
    }



    switch (InputColorSpace) {



    case 128:
        Float[0] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "XYZ_X") / 100.0;
        Float[1] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "XYZ_Y") / 100.0;
        Float[2] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "XYZ_Z") / 100.0;
        break;

    case 130:
        Float[0] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "LAB_L");
        Float[1] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "LAB_A");
        Float[2] = cmsIT8GetDataDbl(ContextID, hIT8in, CGATSPatch, "LAB_B");
        break;


    case 129:
        Float[0] = GetIT8Val(ContextID, "RGB_R", 255.0);
        Float[1] = GetIT8Val(ContextID, "RGB_G", 255.0);
        Float[2] = GetIT8Val(ContextID, "RGB_B", 255.0);
        break;

    case 131:
        Float[0] = GetIT8Val(ContextID, "GRAY", 255.0);
        break;

    case 132:
        Float[0] = GetIT8Val(ContextID, "CMYK_C", 1.0);
        Float[1] = GetIT8Val(ContextID, "CMYK_M", 1.0);
        Float[2] = GetIT8Val(ContextID, "CMYK_Y", 1.0);
        Float[3] = GetIT8Val(ContextID, "CMYK_K", 1.0);
        break;

    case 133:
        Float[0] = GetIT8Val(ContextID, "CMY_C", 1.0);
        Float[1] = GetIT8Val(ContextID, "CMY_M", 1.0);
        Float[2] = GetIT8Val(ContextID, "CMY_Y", 1.0);
        break;

    case 142:
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    case 148:
    case 147:
    case 146:
    case 145:
    case 144:
    case 143:
        {
            cmsUInt32Number i, n;

            n = cmsChannelsOf(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                sprintf(Buffer, "%uCLR_%u", n, i+1);
                Float[i] = GetIT8Val(ContextID, Buffer, 100.0);
            }

        }
        break;

    default:
        {
            cmsUInt32Number i, n;

            n = cmsChannelsOf(ContextID, InputColorSpace);
            for (i=0; i < n; i++) {

                char Buffer[255];

                sprintf(Buffer, "CHAN_%u", i+1);
                Float[i] = GetIT8Val(ContextID, Buffer, 1.0);
            }

        }
    }

}
