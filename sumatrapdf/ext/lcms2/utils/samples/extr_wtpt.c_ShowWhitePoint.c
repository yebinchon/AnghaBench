
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int cmsCIExyY ;
struct TYPE_10__ {double X; double Y; double Z; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_11__ {double L; double a; double b; } ;
typedef TYPE_2__ cmsCIELab ;
struct TYPE_12__ {double L; double C; double h; } ;
typedef TYPE_3__ cmsCIELCh ;


 int cmsLab2LCh (TYPE_3__*,TYPE_2__*) ;
 int cmsXYZ2Lab (int *,TYPE_2__*,TYPE_1__*) ;
 int cmsXYZ2xyY (int *,TYPE_1__*) ;
 scalar_t__ lShowLCh ;
 scalar_t__ lShowLab ;
 scalar_t__ lShowXYZ ;
 int printf (char*,double,...) ;
 double sqrt (int) ;

__attribute__((used)) static
void ShowWhitePoint(cmsCIEXYZ* WtPt)
{
       cmsCIELab Lab;
       cmsCIELCh LCh;
       cmsCIExyY xyY;


       cmsXYZ2Lab(((void*)0), &Lab, WtPt);
       cmsLab2LCh(&LCh, &Lab);
       cmsXYZ2xyY(&xyY, WtPt);


       if (lShowXYZ) printf("XYZ=(%3.1f, %3.1f, %3.1f)\n", WtPt->X, WtPt->Y, WtPt->Z);
       if (lShowLab) printf("Lab=(%3.3f, %3.3f, %3.3f)\n", Lab.L, Lab.a, Lab.b);
       if (lShowLCh) printf("LCh=(%3.3f, %3.3f, %3.3f)\n", LCh.L, LCh.C, LCh.h);
       {
              double Ssens = (LCh.C * 100.0 )/ sqrt(LCh.C*LCh.C + LCh.L * LCh.L) ;
              printf("Sens = %f\n", Ssens);
       }

}
