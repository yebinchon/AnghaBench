
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BlackPointCompensation ;
 int EOF ;
 int FatalError (char*,...) ;
 void* Intent ;
 int PrecalcMode ;
 void* ProofingIntent ;
 int SW ;
 void* TRUE ;
 void* Verbose ;
 void* atoi (void*) ;
 void* cInProf ;
 void* cOutProf ;
 void* cProofing ;
 void* lIsDeviceLink ;
 void* lMultiProfileChain ;
 int xgetopt (int,char**,char*) ;
 void* xoptarg ;
 int xoptind ;
 int xoptinit () ;

__attribute__((used)) static
void HandleSwitches(int argc, char *argv[])
{
 int s;

 xoptinit();

 while ((s = xgetopt(argc, argv,"C:c:VvbBI:i:O:o:T:t:L:l:r:r:P:p:Mm")) != EOF) {


  switch (s){

  case 'b':
  case 'B':
   BlackPointCompensation = TRUE;
   break;

  case 'c':
  case 'C':
   PrecalcMode = atoi(xoptarg);
   if (PrecalcMode < 0 || PrecalcMode > 3)
    FatalError("Unknown precalc mode '%d'", PrecalcMode);
   break;

  case 'v':
  case 'V':
   Verbose = TRUE;
   break;

  case 'i':
  case 'I':
   if (lIsDeviceLink)
    FatalError("Device-link already specified");
   cInProf = xoptarg;
   break;

  case 'o':
  case 'O':
   if (lIsDeviceLink)
    FatalError("Device-link already specified");
   cOutProf = xoptarg;
   break;

  case 't':
  case 'T':
   Intent = atoi(xoptarg);

   if (Intent < 0) Intent = 0;
   break;


  case 'l':
  case 'L':
   cInProf = xoptarg;
   lIsDeviceLink = TRUE;
   break;

  case 'p':
  case 'P':
   cProofing = xoptarg;
   break;



  case 'r':
  case 'R':
   ProofingIntent = atoi(xoptarg);

   if (ProofingIntent < 0) ProofingIntent = 0;
   break;


  case 'm':
  case 'M':
   lMultiProfileChain = TRUE;
   break;

  default:
   FatalError("Unknown option.");
  }
 }



 if (xoptind < argc) {

  if (!lMultiProfileChain)
   FatalError("Use %cm for multiprofile transforms", SW);
 }

}
