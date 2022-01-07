
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 char* IncludePart ;
 int OutputColorSpace ;
 int cmsChannelsOf (int ,int) ;
 int cmsIT8DefineDblFormat (int ,int ,char*) ;
 int cmsIT8SetComment (int ,int ,char*) ;
 int cmsIT8SetDataFormat (int ,int ,int,char*) ;
 int cmsIT8SetPropertyDbl (int ,int ,char*,int) ;
 int cmsIT8SetPropertyStr (int ,int ,char*,char*) ;
 int hIT8out ;
 int nMaxPatches ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static
void SetOutputDataFormat(cmsContext ContextID)
{
    cmsIT8DefineDblFormat(ContextID, hIT8out, "%.4g");
    cmsIT8SetPropertyStr(ContextID, hIT8out, "ORIGINATOR", "icctrans");

    if (IncludePart != ((void*)0))
        cmsIT8SetPropertyStr(ContextID, hIT8out, ".INCLUDE", IncludePart);

    cmsIT8SetComment(ContextID, hIT8out, "Data follows");
    cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_SETS", nMaxPatches);


    switch (OutputColorSpace) {




    case 128:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "XYZ_X");
        cmsIT8SetDataFormat(ContextID, hIT8out, 2, "XYZ_Y");
        cmsIT8SetDataFormat(ContextID, hIT8out, 3, "XYZ_Z");
        break;

    case 130:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "LAB_L");
        cmsIT8SetDataFormat(ContextID, hIT8out, 2, "LAB_A");
        cmsIT8SetDataFormat(ContextID, hIT8out, 3, "LAB_B");
        break;


    case 129:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "RGB_R");
        cmsIT8SetDataFormat(ContextID, hIT8out, 2, "RGB_G");
        cmsIT8SetDataFormat(ContextID, hIT8out, 3, "RGB_B");
        break;

    case 131:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 2);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "GRAY");
        break;

    case 132:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 5);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "CMYK_C");
        cmsIT8SetDataFormat(ContextID, hIT8out, 2, "CMYK_M");
        cmsIT8SetDataFormat(ContextID, hIT8out, 3, "CMYK_Y");
        cmsIT8SetDataFormat(ContextID, hIT8out, 4, "CMYK_K");
        break;

    case 133:
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", 4);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");
        cmsIT8SetDataFormat(ContextID, hIT8out, 1, "CMY_C");
        cmsIT8SetDataFormat(ContextID, hIT8out, 2, "CMY_M");
        cmsIT8SetDataFormat(ContextID, hIT8out, 3, "CMY_Y");
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
            int i, n;
            char Buffer[255];

            n = cmsChannelsOf(ContextID, OutputColorSpace);
            cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", n+1);
            cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");

            for (i=1; i <= n; i++) {
                sprintf(Buffer, "%dCLR_%d", n, i);
                cmsIT8SetDataFormat(ContextID, hIT8out, i, Buffer);
            }
        }
        break;

    default: {

        int i, n;
        char Buffer[255];

        n = cmsChannelsOf(ContextID, OutputColorSpace);
        cmsIT8SetPropertyDbl(ContextID, hIT8out, "NUMBER_OF_FIELDS", n+1);
        cmsIT8SetDataFormat(ContextID, hIT8out, 0, "SAMPLE_ID");

        for (i=1; i <= n; i++) {
            sprintf(Buffer, "CHAN_%d", i);
            cmsIT8SetDataFormat(ContextID, hIT8out, i, Buffer);
        }
    }
    }
}
