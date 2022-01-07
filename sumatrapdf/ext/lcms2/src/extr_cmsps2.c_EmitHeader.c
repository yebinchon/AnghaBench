
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int RemoveCR (char*) ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 int cmsMLUgetASCII (int ,int *,int ,int ,char*,int) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigCopyrightTag ;
 int cmsSigProfileDescriptionTag ;
 int ctime (int *) ;
 int time (int *) ;

__attribute__((used)) static
void EmitHeader(cmsContext ContextID, cmsIOHANDLER* m, const char* Title, cmsHPROFILE hProfile)
{
    time_t timer;
    cmsMLU *Description, *Copyright;
    char DescASCII[256], CopyrightASCII[256];

    time(&timer);

    Description = (cmsMLU*) cmsReadTag(ContextID, hProfile, cmsSigProfileDescriptionTag);
    Copyright = (cmsMLU*) cmsReadTag(ContextID, hProfile, cmsSigCopyrightTag);

    DescASCII[0] = DescASCII[255] = 0;
    CopyrightASCII[0] = CopyrightASCII[255] = 0;

    if (Description != ((void*)0)) cmsMLUgetASCII(ContextID, Description, cmsNoLanguage, cmsNoCountry, DescASCII, 255);
    if (Copyright != ((void*)0)) cmsMLUgetASCII(ContextID, Copyright, cmsNoLanguage, cmsNoCountry, CopyrightASCII, 255);

    _cmsIOPrintf(ContextID, m, "%%!PS-Adobe-3.0\n");
    _cmsIOPrintf(ContextID, m, "%%\n");
    _cmsIOPrintf(ContextID, m, "%% %s\n", Title);
    _cmsIOPrintf(ContextID, m, "%% Source: %s\n", RemoveCR(DescASCII));
    _cmsIOPrintf(ContextID, m, "%%         %s\n", RemoveCR(CopyrightASCII));
    _cmsIOPrintf(ContextID, m, "%% Created: %s", ctime(&timer));
    _cmsIOPrintf(ContextID, m, "%%\n");
    _cmsIOPrintf(ContextID, m, "%%%%BeginResource\n");

}
