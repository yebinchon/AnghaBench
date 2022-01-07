
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef scalar_t__ cmsFloat64Number ;
typedef scalar_t__ clock_t ;


 int DbgThread () ;
 int Die (char*) ;
 int PrintPerformance (int,int,scalar_t__) ;
 int TYPE_GRAY_8 ;
 int TitlePerformance (char const*) ;
 scalar_t__ clock () ;
 int cmsCloseProfile (int ,int *) ;
 int cmsCreateTransform (int ,int *,int ,int *,int ,int,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,scalar_t__*,scalar_t__*,int) ;
 int cmsFLAGS_NOCACHE ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static
void SpeedTest8bitsGray(const char * Title, cmsHPROFILE hlcmsProfileIn, cmsHPROFILE hlcmsProfileOut, cmsInt32Number Intent)
{
    cmsInt32Number r, g, b, j;
    clock_t atime;
    cmsFloat64Number diff;
    cmsHTRANSFORM hlcmsxform;
    cmsUInt8Number *In;
    cmsUInt32Number Mb;


    if (hlcmsProfileIn == ((void*)0) || hlcmsProfileOut == ((void*)0))
        Die("Unable to open profiles");

    hlcmsxform = cmsCreateTransform(DbgThread(), hlcmsProfileIn,
        TYPE_GRAY_8, hlcmsProfileOut, TYPE_GRAY_8, Intent, cmsFLAGS_NOCACHE);
    cmsCloseProfile(DbgThread(), hlcmsProfileIn);
    cmsCloseProfile(DbgThread(), hlcmsProfileOut);
    Mb = 256*256*256;

    In = (cmsUInt8Number*) malloc(Mb);

    j = 0;
    for (r=0; r < 256; r++)
        for (g=0; g < 256; g++)
            for (b=0; b < 256; b++) {

                In[j] = (cmsUInt8Number) r;

                j++;
            }

    TitlePerformance(Title);

    atime = clock();

    cmsDoTransform(DbgThread(), hlcmsxform, In, In, 256*256*256);

    diff = clock() - atime;
    free(In);

    PrintPerformance(Mb, sizeof(cmsUInt8Number), diff);
    cmsDeleteTransform(DbgThread(), hlcmsxform);
}
