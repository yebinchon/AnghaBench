
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mxArray ;


 int * AllocateOutputArray (int const*,int ) ;
 int ApplyTransforms (int const*,int *) ;
 void* BlackPointCompensation ;
 int CloseTransforms () ;
 void* FALSE ;
 int FatalError (char*) ;
 int HandleSwitches (int,char**) ;
 int INTENT_ABSOLUTE_COLORIMETRIC ;
 int INTENT_PERCEPTUAL ;
 int Intent ;
 int MatLabErrorHandler ;
 int OpenTransforms (int,char**) ;
 int OutputChannels ;
 int PrecalcMode ;
 int PrintHelp () ;
 int ProofingIntent ;
 int SizeOfArrayType (int const*) ;
 scalar_t__ Verbose ;
 int * cInProf ;
 int * cOutProf ;
 int * cProofing ;
 int cmsSetLogErrorHandler (int ) ;
 void* lIsDeviceLink ;
 void* lMultiProfileChain ;
 scalar_t__ mxGetString (int const*,char*,int) ;
 int mxIsChar (int const*) ;
 int mxIsNumeric (int const*) ;
 int nBytesDepth ;
 scalar_t__ nProfiles ;
 char* strtok (char*,char*) ;

void mexFunction(
     int nlhs,
     mxArray *plhs[],
     int nrhs,
     const mxArray *prhs[]
)
{

 char CommandLine[4096+1];
 char *pt, *argv[128];
 int argc = 1;


 if (nrhs != 2) {

  PrintHelp();
  return;
 }


 if(nlhs > 1) {
  FatalError("Too many output arguments.");
 }




 cmsSetLogErrorHandler(MatLabErrorHandler);



 Verbose = 0;
 cInProf = ((void*)0);
 cOutProf = ((void*)0);
 cProofing = ((void*)0);

 lMultiProfileChain = FALSE;
 nProfiles = 0;

 Intent = INTENT_PERCEPTUAL;
 ProofingIntent = INTENT_ABSOLUTE_COLORIMETRIC;
 PrecalcMode = 1;
 BlackPointCompensation = FALSE;
 lIsDeviceLink = FALSE;



 if (!mxIsNumeric(prhs[0]))
  FatalError("Type mismatch on argument 1 -- Must be numeric");

 if (!mxIsChar(prhs[1]))
  FatalError("Type mismatch on argument 2 -- Must be string");






 if (mxGetString(prhs[1], CommandLine, 4096))
  FatalError("Cannot unpack command string");



 argv[0] = ((void*)0);
 for (pt = strtok(CommandLine, " ");
  pt;
  pt = strtok(((void*)0), " ")) {

   argv[argc++] = pt;
 }




 HandleSwitches(argc, argv);


 nBytesDepth = SizeOfArrayType(prhs[0]);

 OpenTransforms(argc, argv);


 plhs[0] = AllocateOutputArray(prhs[0], OutputChannels);


 ApplyTransforms(prhs[0], plhs[0]);

 CloseTransforms();


}
