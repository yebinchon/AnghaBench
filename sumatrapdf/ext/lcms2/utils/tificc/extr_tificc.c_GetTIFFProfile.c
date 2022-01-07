
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int * cmsHPROFILE ;
typedef void* cmsFloat32Number ;
struct TYPE_10__ {double Y; void* y; void* x; } ;
struct TYPE_9__ {double Y; void* y; void* x; } ;
struct TYPE_8__ {double Y; void* y; void* x; } ;
struct TYPE_11__ {TYPE_3__ Blue; TYPE_2__ Green; TYPE_1__ Red; } ;
typedef TYPE_4__ cmsCIExyYTRIPLE ;
struct TYPE_12__ {double Y; void* y; void* x; } ;
typedef TYPE_5__ cmsCIExyY ;
typedef int TIFF ;


 scalar_t__ IgnoreEmbedded ;
 int PrintProfileInformation (int *,int *) ;
 int * SaveEmbedded ;
 int SaveMemoryBlock (int *,int ,int *) ;
 scalar_t__ TIFFGetField (int *,int ,void***,...) ;
 int TIFFGetFieldDefaulted (int *,int ,int **,int **,int **) ;
 int TIFFTAG_ICCPROFILE ;
 int TIFFTAG_PRIMARYCHROMATICITIES ;
 int TIFFTAG_TRANSFERFUNCTION ;
 int TIFFTAG_WHITEPOINT ;
 scalar_t__ Verbose ;
 int * cmsBuildTabulatedToneCurve16 (int *,int,int *) ;
 int * cmsCreateRGBProfileTHR (int *,TYPE_5__*,TYPE_4__*,int **) ;
 int cmsFreeToneCurve (int *,int *) ;
 int * cmsOpenProfileFromMem (int *,int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static
cmsHPROFILE GetTIFFProfile(TIFF* in)
{
    cmsCIExyYTRIPLE Primaries;
    cmsFloat32Number* chr;
    cmsCIExyY WhitePoint;
    cmsFloat32Number* wp;
    int i;
    cmsToneCurve* Curve[3];
    cmsUInt16Number *gmr, *gmg, *gmb;
    cmsHPROFILE hProfile;
    cmsUInt32Number EmbedLen;
    cmsUInt8Number* EmbedBuffer;

    if (IgnoreEmbedded) return ((void*)0);

    if (TIFFGetField(in, TIFFTAG_ICCPROFILE, &EmbedLen, &EmbedBuffer)) {

        hProfile = cmsOpenProfileFromMem(EmbedBuffer, EmbedLen);


        if (Verbose && (hProfile != ((void*)0))) {

            fprintf(stdout, "\n[Embedded profile]\n");
            PrintProfileInformation(((void*)0), hProfile);
            fflush(stdout);
        }

        if (hProfile != ((void*)0) && SaveEmbedded != ((void*)0))
            SaveMemoryBlock(EmbedBuffer, EmbedLen, SaveEmbedded);

        if (hProfile) return hProfile;
    }



    if (TIFFGetField(in, TIFFTAG_PRIMARYCHROMATICITIES, &chr)) {

        Primaries.Red.x = chr[0];
        Primaries.Red.y = chr[1];
        Primaries.Green.x = chr[2];
        Primaries.Green.y = chr[3];
        Primaries.Blue.x = chr[4];
        Primaries.Blue.y = chr[5];

        Primaries.Red.Y = Primaries.Green.Y = Primaries.Blue.Y = 1.0;

        if (TIFFGetField(in, TIFFTAG_WHITEPOINT, &wp)) {

            WhitePoint.x = wp[0];
            WhitePoint.y = wp[1];
            WhitePoint.Y = 1.0;



            TIFFGetFieldDefaulted(in, TIFFTAG_TRANSFERFUNCTION,
                &gmr,
                &gmg,
                &gmb);

            Curve[0] = cmsBuildTabulatedToneCurve16(((void*)0), 256, gmr);
            Curve[1] = cmsBuildTabulatedToneCurve16(((void*)0), 256, gmg);
            Curve[2] = cmsBuildTabulatedToneCurve16(((void*)0), 256, gmb);

            hProfile = cmsCreateRGBProfileTHR(((void*)0), &WhitePoint, &Primaries, Curve);

            for (i=0; i < 3; i++)
                cmsFreeToneCurve(((void*)0), Curve[i]);

            if (Verbose) {
                fprintf(stdout, "\n[Colorimetric TIFF]\n");
            }


            return hProfile;
        }
    }

    return ((void*)0);
}
