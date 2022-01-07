
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int cmsMLU ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUsetWide (int ,int *,char*,char*,char const*) ;
 int cmsSigCopyrightTag ;
 int cmsSigProfileDescriptionTag ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsBool SetTextTags(cmsContext ContextID, cmsHPROFILE hProfile, const wchar_t* Description)
{
    cmsMLU *DescriptionMLU, *CopyrightMLU;
    cmsBool rc = FALSE;

    DescriptionMLU = cmsMLUalloc(ContextID, 1);
    CopyrightMLU = cmsMLUalloc(ContextID, 1);

    if (DescriptionMLU == ((void*)0) || CopyrightMLU == ((void*)0)) goto Error;

    if (!cmsMLUsetWide(ContextID, DescriptionMLU, "en", "US", Description)) goto Error;
    if (!cmsMLUsetWide(ContextID, CopyrightMLU, "en", "US", L"No copyright, use freely")) goto Error;

    if (!cmsWriteTag(ContextID, hProfile, cmsSigProfileDescriptionTag, DescriptionMLU)) goto Error;
    if (!cmsWriteTag(ContextID, hProfile, cmsSigCopyrightTag, CopyrightMLU)) goto Error;

    rc = TRUE;

Error:

    if (DescriptionMLU)
        cmsMLUfree(ContextID, DescriptionMLU);
    if (CopyrightMLU)
        cmsMLUfree(ContextID, CopyrightMLU);
    return rc;
}
