
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int * cmsHPROFILE ;
typedef int cmsContext ;


 scalar_t__ BlackPointCompensation ;
 int FatalError (char*,int) ;
 int Intent ;
 int NumOfGridPoints ;
 int * OpenStockProfile (int ,int ) ;
 int OutFile ;
 int PrecalcMode ;
 scalar_t__ Undecorated ;
 int cOutProf ;
 int cmsCloseProfile (int ,int *) ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_GRIDPOINTS (int ) ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NODEFAULTRESOURCEDEF ;
 size_t cmsGetPostScriptCRD (int ,int *,int ,int ,char*,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static
void GenerateCRD(cmsContext ContextID)
{
 cmsHPROFILE hProfile = OpenStockProfile(ContextID, cOutProf);
 size_t n;
 char* Buffer;
    cmsUInt32Number dwFlags = 0;

 if (hProfile == ((void*)0)) return;

    if (BlackPointCompensation) dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;
    if (Undecorated) dwFlags |= cmsFLAGS_NODEFAULTRESOURCEDEF;

    switch (PrecalcMode) {

     case 0: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
  case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
  case 1:
            if (NumOfGridPoints > 0)
                dwFlags |= cmsFLAGS_GRIDPOINTS(NumOfGridPoints);
            break;

  default: FatalError("ERROR: Unknown precalculation mode '%d'", PrecalcMode);
  }

 n = cmsGetPostScriptCRD(ContextID, hProfile, Intent, dwFlags, ((void*)0), 0);
 if (n == 0) return;

 Buffer = (char*) malloc(n + 1);
 if (Buffer == ((void*)0)) return;
        cmsGetPostScriptCRD(ContextID, hProfile, Intent, dwFlags, Buffer, (cmsUInt32Number) n);
 Buffer[n] = 0;

 fprintf(OutFile, "%s", Buffer);
 free(Buffer);
 cmsCloseProfile(ContextID, hProfile);
}
