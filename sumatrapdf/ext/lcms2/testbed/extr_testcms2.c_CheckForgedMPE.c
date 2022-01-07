
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef scalar_t__ cmsColorSpaceSignature ;


 size_t BYTES_SH (int) ;
 size_t CHANNELS_SH (size_t) ;
 size_t COLORSPACE_SH (int ) ;
 int DbgThread () ;
 int ErrorReportingFunction ;
 scalar_t__ FALSE ;
 int FatalErrorQuit ;
 int PT_ANY ;
 int PT_Lab ;
 int TYPE_BGR_8 ;
 scalar_t__ T_BYTES (size_t) ;
 scalar_t__ TrappedError ;
 size_t cmsChannelsOf (int ,scalar_t__) ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateTransform (int ,int ,size_t,int ,int ,size_t,size_t) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int ) ;
 int cmsDoTransform (int ,int ,double*,double*,int) ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSetLogErrorHandler (int ,int ) ;
 scalar_t__ cmsSigLabData ;

__attribute__((used)) static
int CheckForgedMPE(void)
{
    cmsUInt32Number i;
    cmsHPROFILE srcProfile;
    cmsHPROFILE dstProfile;
    cmsColorSpaceSignature srcCS;
    cmsUInt32Number nSrcComponents;
    cmsUInt32Number srcFormat;
    cmsUInt32Number intent = 0;
    cmsUInt32Number flags = 0;
    cmsHTRANSFORM hTransform;
    cmsUInt8Number output[4];

    srcProfile = cmsOpenProfileFromFile(DbgThread(), "bad_mpe.icc", "r");
    if (!srcProfile)
        return 0;

    dstProfile = cmsCreate_sRGBProfile(DbgThread());
    if (!dstProfile) {
        cmsCloseProfile(DbgThread(), srcProfile);
        return 0;
    }

    srcCS = cmsGetColorSpace(DbgThread(), srcProfile);
    nSrcComponents = cmsChannelsOf(DbgThread(), srcCS);

    if (srcCS == cmsSigLabData) {
        srcFormat =
            COLORSPACE_SH(PT_Lab) | CHANNELS_SH(nSrcComponents) | BYTES_SH(0);
    }
    else {
        srcFormat =
            COLORSPACE_SH(PT_ANY) | CHANNELS_SH(nSrcComponents) | BYTES_SH(1);
    }

    cmsSetLogErrorHandler(DbgThread(), ErrorReportingFunction);

    hTransform = cmsCreateTransform(DbgThread(), srcProfile, srcFormat, dstProfile,
        TYPE_BGR_8, intent, flags);
    cmsCloseProfile(DbgThread(), srcProfile);
    cmsCloseProfile(DbgThread(), dstProfile);

    cmsSetLogErrorHandler(DbgThread(), FatalErrorQuit);


    if (!TrappedError) return 0;

    TrappedError = FALSE;


    if (!hTransform) return 1;


    if (T_BYTES(srcFormat) == 0) {
        double input[128];
        for (i = 0; i < nSrcComponents; i++)
            input[i] = 0.5f;
        cmsDoTransform(DbgThread(), hTransform, input, output, 1);
    }
    else {
        cmsUInt8Number input[128];
        for (i = 0; i < nSrcComponents; i++)
            input[i] = 128;
        cmsDoTransform(DbgThread(), hTransform, input, output, 1);
    }
    cmsDeleteTransform(DbgThread(), hTransform);

    return 0;
}
