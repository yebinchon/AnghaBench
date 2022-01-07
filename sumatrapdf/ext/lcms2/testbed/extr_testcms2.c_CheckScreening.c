
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsTagSignature ;
struct TYPE_5__ {int nChannels; TYPE_1__* Channels; int Flag; } ;
typedef TYPE_2__ cmsScreening ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
struct TYPE_4__ {double Frequency; double ScreenAngle; int SpotShape; } ;


 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSPOT_ELLIPSE ;
 int cmsWriteTag (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number CheckScreening(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsScreening *Pt, sc;
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            sc.Flag = 0;
            sc.nChannels = 1;
            sc.Channels[0].Frequency = 2.0;
            sc.Channels[0].ScreenAngle = 3.0;
            sc.Channels[0].SpotShape = cmsSPOT_ELLIPSE;

            rc = cmsWriteTag(DbgThread(), hProfile, tag, &sc);
            return rc;


        case 2:
            Pt = (cmsScreening *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;

            if (Pt ->nChannels != 1) return 0;
            if (Pt ->Flag != 0) return 0;
            if (!IsGoodFixed15_16("Freq", Pt ->Channels[0].Frequency, 2.0)) return 0;
            if (!IsGoodFixed15_16("Angle", Pt ->Channels[0].ScreenAngle, 3.0)) return 0;
            if (Pt ->Channels[0].SpotShape != cmsSPOT_ELLIPSE) return 0;
            return 1;

        default:
            return 0;
    }
}
