
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;


 int CGATSPatch ;
 int InputColorSpace ;
 int OutputColorSpace ;
 int SetCGATSfld (int ,char*,double) ;
 int cmsChannelsOf (int ,int ) ;
 int cmsIT8SetData (int ,int ,int ,char*,int ) ;
 int hIT8out ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static
void PutCGATSValues(cmsContext ContextID, cmsFloat64Number Float[])
{
    cmsIT8SetData(ContextID, hIT8out, CGATSPatch, "SAMPLE_ID", CGATSPatch);
    switch (OutputColorSpace) {




    case 128:

        SetCGATSfld(ContextID, "XYZ_X", Float[0] * 100.0);
        SetCGATSfld(ContextID, "XYZ_Y", Float[1] * 100.0);
        SetCGATSfld(ContextID, "XYZ_Z", Float[2] * 100.0);
        break;

    case 130:

        SetCGATSfld(ContextID, "LAB_L", Float[0]);
        SetCGATSfld(ContextID, "LAB_A", Float[1]);
        SetCGATSfld(ContextID, "LAB_B", Float[2]);
        break;


    case 129:
        SetCGATSfld(ContextID, "RGB_R", Float[0] * 255.0);
        SetCGATSfld(ContextID, "RGB_G", Float[1] * 255.0);
        SetCGATSfld(ContextID, "RGB_B", Float[2] * 255.0);
        break;

    case 131:
        SetCGATSfld(ContextID, "GRAY", Float[0] * 255.0);
        break;

    case 132:
        SetCGATSfld(ContextID, "CMYK_C", Float[0]);
        SetCGATSfld(ContextID, "CMYK_M", Float[1]);
        SetCGATSfld(ContextID, "CMYK_Y", Float[2]);
        SetCGATSfld(ContextID, "CMYK_K", Float[3]);
        break;

    case 133:
        SetCGATSfld(ContextID, "CMY_C", Float[0]);
        SetCGATSfld(ContextID, "CMY_M", Float[1]);
        SetCGATSfld(ContextID, "CMY_Y", Float[2]);
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

                SetCGATSfld(ContextID, Buffer, Float[i] * 100.0);
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

                SetCGATSfld(ContextID, Buffer, Float[i]);
            }
        }
    }
}
