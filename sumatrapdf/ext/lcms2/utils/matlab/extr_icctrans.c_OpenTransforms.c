
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsHTRANSFORM ;


 int FatalError (char*,int ) ;
 int GetFlags () ;
 void* InputChannels ;
 int InputColorSpace ;
 int Intent ;
 int MakeFormatDescriptor (int ,int ) ;
 void* OpenProfile (char*) ;
 void* OutputChannels ;
 int OutputColorSpace ;
 int ProofingIntent ;
 int SW ;
 scalar_t__ TRUE ;
 char* cInProf ;
 char* cOutProf ;
 char* cProofing ;
 void* cmsChannelsOf (int ) ;
 int cmsCreateMultiprofileTransform (void**,int,int ,int ,int ,int ) ;
 int cmsCreateProofingTransform (int *,int ,int *,int ,void*,int ,int ,int ) ;
 int cmsDeleteTransform (int ) ;
 int cmsFLAGS_SOFTPROOFING ;
 int cmsGetColorSpace (int *) ;
 scalar_t__ cmsGetDeviceClass (int *) ;
 int cmsGetPCS (int *) ;
 int * cmsOpenProfileFromFile (char*,char*) ;
 scalar_t__ cmsSigLinkClass ;
 int * cmsTransform2DeviceLink (int ,double,int ) ;
 int hColorTransform ;
 int * hInput ;
 int * hOutput ;
 void** hProfiles ;
 void* hProof ;
 scalar_t__ lIsDeviceLink ;
 scalar_t__ lMultiProfileChain ;
 int nBytesDepth ;
 int nProfiles ;
 int xoptind ;

__attribute__((used)) static
void OpenTransforms(int argc, char *argv[])
{

 cmsUInt32Number dwIn, dwOut, dwFlags;


 if (lMultiProfileChain) {

  int i;
  cmsHTRANSFORM hTmp;


  nProfiles = argc - xoptind;
  for (i=0; i < nProfiles; i++) {

   hProfiles[i] = OpenProfile(argv[i+xoptind]);
  }




  hTmp = cmsCreateMultiprofileTransform(hProfiles, nProfiles,
   0, 0, Intent, GetFlags());

  hInput = cmsTransform2DeviceLink(hTmp, 4.2, 0);
  hOutput = ((void*)0);
  cmsDeleteTransform(hTmp);

  InputColorSpace = cmsGetColorSpace(hInput);
  OutputColorSpace = cmsGetPCS(hInput);
  lIsDeviceLink = TRUE;

 }
 else
  if (lIsDeviceLink) {

   hInput = cmsOpenProfileFromFile(cInProf, "r");
   hOutput = ((void*)0);
   InputColorSpace = cmsGetColorSpace(hInput);
   OutputColorSpace = cmsGetPCS(hInput);


  }
  else {

   hInput = OpenProfile(cInProf);
   hOutput = OpenProfile(cOutProf);

   InputColorSpace = cmsGetColorSpace(hInput);
   OutputColorSpace = cmsGetColorSpace(hOutput);

   if (cmsGetDeviceClass(hInput) == cmsSigLinkClass ||
    cmsGetDeviceClass(hOutput) == cmsSigLinkClass)
    FatalError("Use %cl flag for devicelink profiles!\n", SW);

  }
  OutputChannels = cmsChannelsOf(OutputColorSpace);
  InputChannels = cmsChannelsOf(InputColorSpace);


  dwIn = MakeFormatDescriptor(InputColorSpace, nBytesDepth);
  dwOut = MakeFormatDescriptor(OutputColorSpace, nBytesDepth);


  dwFlags = GetFlags();

  if (cProofing != ((void*)0)) {

   hProof = OpenProfile(cProofing);
   dwFlags |= cmsFLAGS_SOFTPROOFING;
  }




  hColorTransform = cmsCreateProofingTransform(hInput, dwIn,
   hOutput, dwOut,
   hProof, Intent,
   ProofingIntent,
   dwFlags);

}
