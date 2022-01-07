
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_RGB_8 ;
 double VecDist (int*,int*) ;
 int cmsCloseProfile (int *) ;
 int * cmsCreateTransform (int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int *) ;
 int cmsDoTransform (int *,int*,int*,int) ;
 int cmsFLAGS_NOOPTIMIZE ;
 int * cmsOpenProfileFromFile (char*,char*) ;
 int printf (char*,...) ;
 double sqrt (double) ;

int main(int argc, char* argv[])
{

    int r, g, b;
    cmsUInt8Number RGB[3], RGB_OUT[3];
    cmsHTRANSFORM xform;
    cmsHPROFILE hProfile;
    double err, SumX=0, SumX2=0, Peak = 0, n = 0;


    if (argc != 2) {
        printf("roundtrip <RGB icc profile>\n");
        return 1;
    }

    hProfile = cmsOpenProfileFromFile(argv[1], "r");
    if (hProfile == ((void*)0))
    {
        printf("invalid profile\n");
        return 1;
    }

    xform = cmsCreateTransform(hProfile,TYPE_RGB_8, hProfile, TYPE_RGB_8, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_NOOPTIMIZE);
    if (xform == ((void*)0))
    {
        printf("Not a valid RGB profile\n");
        return 1;
    }

    for (r=0; r< 256; r++) {
        printf("%d  \r", r);
        for (g=0; g < 256; g++) {
            for (b=0; b < 256; b++) {

                RGB[0] = r;
                RGB[1] = g;
                RGB[2] = b;

                cmsDoTransform(xform, RGB, RGB_OUT, 1);

                err = VecDist(RGB, RGB_OUT);

                SumX += err;
                SumX2 += err * err;
                n += 1.0;
                if (err > Peak)
                    Peak = err;

            }
        }
    }

    printf("Average %g\n", SumX / n);
    printf("Max %g\n", Peak);
    printf("Std  %g\n", sqrt((n*SumX2 - SumX * SumX) / (n*(n-1))));
    cmsCloseProfile(hProfile);
    cmsDeleteTransform(xform);

    return 0;
}
