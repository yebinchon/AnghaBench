
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMLU ;
typedef int cmsHPROFILE ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int *) ;
 int cmsMLUsetASCII (int *,char*,char*,char*) ;
 int cmsSigCopyrightTag ;
 int cmsSigProfileDescriptionTag ;
 int cmsWriteTag (int ,int ,int *) ;

__attribute__((used)) static
cmsBool SetTextTags(cmsHPROFILE hProfile)
{
    cmsMLU *DescriptionMLU, *CopyrightMLU;
    cmsBool rc = FALSE;

    DescriptionMLU = cmsMLUalloc(0, 1);
    CopyrightMLU = cmsMLUalloc(0, 1);

    if (DescriptionMLU == ((void*)0) || CopyrightMLU == ((void*)0)) goto Error;

    if (!cmsMLUsetASCII(DescriptionMLU, "en", "US", "Little cms Tiff8 CIELab")) goto Error;
    if (!cmsMLUsetASCII(CopyrightMLU, "en", "US", "Copyright (c) Marti Maria, 2010. All rights reserved.")) goto Error;

    if (!cmsWriteTag(hProfile, cmsSigProfileDescriptionTag, DescriptionMLU)) goto Error;
    if (!cmsWriteTag(hProfile, cmsSigCopyrightTag, CopyrightMLU)) goto Error;

    rc = TRUE;

Error:

    if (DescriptionMLU)
        cmsMLUfree(DescriptionMLU);
    if (CopyrightMLU)
        cmsMLUfree(CopyrightMLU);
    return rc;
}
