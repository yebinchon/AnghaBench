
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int TIFF ;


 int GetInputPixelType (int *) ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int PrintProfileInformation (int *,int *) ;
 scalar_t__ TIFFGetField (int *,int ,int *,int **) ;
 int TIFFTAG_ICCPROFILE ;
 int TYPE_Lab_DBL ;
 scalar_t__ Verbose ;
 int * cmsCreateTransform (int *,int ,int ,int ,int ,int ) ;
 int * cmsOpenProfileFromMem (int *,int ) ;
 int fprintf (int ,char*) ;
 int hLab ;
 int stdout ;

__attribute__((used)) static
cmsUInt32Number OpenEmbedded(TIFF* tiff, cmsHPROFILE* PtrProfile, cmsHTRANSFORM* PtrXform)
{

    cmsUInt32Number EmbedLen, dwFormat = 0;
    cmsUInt8Number* EmbedBuffer;

    *PtrProfile = ((void*)0);
    *PtrXform = ((void*)0);

    if (TIFFGetField(tiff, TIFFTAG_ICCPROFILE, &EmbedLen, &EmbedBuffer)) {

              *PtrProfile = cmsOpenProfileFromMem(EmbedBuffer, EmbedLen);

              if (Verbose) {

      fprintf(stdout, "Embedded profile found:\n");
      PrintProfileInformation(((void*)0), *PtrProfile);

              }

              dwFormat = GetInputPixelType(tiff);
              *PtrXform = cmsCreateTransform(*PtrProfile, dwFormat,
                                          hLab, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);

      }

    return dwFormat;
}
