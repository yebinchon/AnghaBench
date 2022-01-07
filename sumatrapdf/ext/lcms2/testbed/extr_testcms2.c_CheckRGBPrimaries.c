
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsHPROFILE ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_5__ {TYPE_3__ Blue; TYPE_3__ Green; TYPE_3__ Red; } ;
typedef TYPE_1__ cmsCIExyYTRIPLE ;
struct TYPE_6__ {int Blue; int Green; int Red; } ;
typedef TYPE_2__ cmsCIEXYZTRIPLE ;
typedef int cmsBool ;


 int DbgThread () ;
 int FALSE ;
 int Fail (char*) ;
 int GetProfileRGBPrimaries (int ,TYPE_2__*,int ) ;
 int INTENT_ABSOLUTE_COLORIMETRIC ;
 int IsGoodFixed15_16 (char*,int ,double) ;
 int TRUE ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsSetAdaptationState (int ,int ) ;
 int cmsXYZ2xyY (int ,TYPE_3__*,int *) ;

__attribute__((used)) static
int CheckRGBPrimaries(void)
{
    cmsHPROFILE hsRGB;
    cmsCIEXYZTRIPLE tripXYZ;
    cmsCIExyYTRIPLE tripxyY;
    cmsBool result;

    cmsSetAdaptationState(DbgThread(), 0);
    hsRGB = cmsCreate_sRGBProfile(DbgThread());
    if (!hsRGB) return 0;

    result = GetProfileRGBPrimaries(hsRGB, &tripXYZ,
        INTENT_ABSOLUTE_COLORIMETRIC);

    cmsCloseProfile(DbgThread(), hsRGB);
    if (!result) return 0;

    cmsXYZ2xyY(DbgThread(), &tripxyY.Red, &tripXYZ.Red);
    cmsXYZ2xyY(DbgThread(), &tripxyY.Green, &tripXYZ.Green);
    cmsXYZ2xyY(DbgThread(), &tripxyY.Blue, &tripXYZ.Blue);




    if (!IsGoodFixed15_16("xRed", tripxyY.Red.x, 0.64) ||
        !IsGoodFixed15_16("yRed", tripxyY.Red.y, 0.33) ||
        !IsGoodFixed15_16("xGreen", tripxyY.Green.x, 0.30) ||
        !IsGoodFixed15_16("yGreen", tripxyY.Green.y, 0.60) ||
        !IsGoodFixed15_16("xBlue", tripxyY.Blue.x, 0.15) ||
        !IsGoodFixed15_16("yBlue", tripxyY.Blue.y, 0.06)) {
            Fail("One or more primaries are wrong.");
            return FALSE;
    }

    return TRUE;
}
