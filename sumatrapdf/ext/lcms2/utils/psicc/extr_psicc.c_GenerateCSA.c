
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int * cmsHPROFILE ;
typedef int cmsContext ;


 int Intent ;
 int * OpenStockProfile (int ,int ) ;
 int OutFile ;
 int cInProf ;
 int cmsCloseProfile (int ,int *) ;
 size_t cmsGetPostScriptCSA (int ,int *,int ,int ,char*,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static
void GenerateCSA(cmsContext ContextID)
{
 cmsHPROFILE hProfile = OpenStockProfile(ContextID, cInProf);
 size_t n;
 char* Buffer;

 if (hProfile == ((void*)0)) return;

 n = cmsGetPostScriptCSA(ContextID, hProfile, Intent, 0, ((void*)0), 0);
 if (n == 0) return;

    Buffer = (char*) malloc(n + 1);
    if (Buffer != ((void*)0)) {

        cmsGetPostScriptCSA(ContextID, hProfile, Intent, 0, Buffer, (cmsUInt32Number) n);
        Buffer[n] = 0;

        fprintf(OutFile, "%s", Buffer);

        free(Buffer);
    }

 cmsCloseProfile(ContextID, hProfile);
}
