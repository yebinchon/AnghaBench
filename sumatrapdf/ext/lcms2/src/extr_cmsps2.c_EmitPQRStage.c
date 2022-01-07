
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsIOHANDLER ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
struct TYPE_3__ {int Z; int Y; int X; } ;
typedef TYPE_1__ cmsCIEXYZ ;


 int _cmsIOPrintf (int ,int *,char*,...) ;
 int _cmsReadMediaWhitePoint (int ,TYPE_1__*,int ) ;

__attribute__((used)) static
void EmitPQRStage(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, int DoBPC, int lIsAbsolute)
{


        if (lIsAbsolute) {






            cmsCIEXYZ White;

            _cmsReadMediaWhitePoint(ContextID, &White, hProfile);

            _cmsIOPrintf(ContextID, m,"/MatrixPQR [1 0 0 0 1 0 0 0 1 ]\n");
            _cmsIOPrintf(ContextID, m,"/RangePQR [ -0.5 2 -0.5 2 -0.5 2 ]\n");

            _cmsIOPrintf(ContextID, m, "%% Absolute colorimetric -- encode to relative to maximize LUT usage\n"
                      "/TransformPQR [\n"
                      "{0.9642 mul %g div exch pop exch pop exch pop exch pop} bind\n"
                      "{1.0000 mul %g div exch pop exch pop exch pop exch pop} bind\n"
                      "{0.8249 mul %g div exch pop exch pop exch pop exch pop} bind\n]\n",
                      White.X, White.Y, White.Z);
            return;
        }


        _cmsIOPrintf(ContextID, m,"%% Bradford Cone Space\n"
                 "/MatrixPQR [0.8951 -0.7502 0.0389 0.2664 1.7135 -0.0685 -0.1614 0.0367 1.0296 ] \n");

        _cmsIOPrintf(ContextID, m, "/RangePQR [ -0.5 2 -0.5 2 -0.5 2 ]\n");




        if (!DoBPC) {

            _cmsIOPrintf(ContextID, m, "%% VonKries-like transform in Bradford Cone Space\n"
                      "/TransformPQR [\n"
                      "{exch pop exch 3 get mul exch pop exch 3 get div} bind\n"
                      "{exch pop exch 4 get mul exch pop exch 4 get div} bind\n"
                      "{exch pop exch 5 get mul exch pop exch 5 get div} bind\n]\n");
        } else {



            _cmsIOPrintf(ContextID, m, "%% VonKries-like transform in Bradford Cone Space plus BPC\n"
                      "/TransformPQR [\n");

            _cmsIOPrintf(ContextID, m, "{4 index 3 get div 2 index 3 get mul "
                    "2 index 3 get 2 index 3 get sub mul "
                    "2 index 3 get 4 index 3 get 3 index 3 get sub mul sub "
                    "3 index 3 get 3 index 3 get exch sub div "
                    "exch pop exch pop exch pop exch pop } bind\n");

            _cmsIOPrintf(ContextID, m, "{4 index 4 get div 2 index 4 get mul "
                    "2 index 4 get 2 index 4 get sub mul "
                    "2 index 4 get 4 index 4 get 3 index 4 get sub mul sub "
                    "3 index 4 get 3 index 4 get exch sub div "
                    "exch pop exch pop exch pop exch pop } bind\n");

            _cmsIOPrintf(ContextID, m, "{4 index 5 get div 2 index 5 get mul "
                    "2 index 5 get 2 index 5 get sub mul "
                    "2 index 5 get 4 index 5 get 3 index 5 get sub mul sub "
                    "3 index 5 get 3 index 5 get exch sub div "
                    "exch pop exch pop exch pop exch pop } bind\n]\n");

        }


}
