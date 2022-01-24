#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cmsNoCountry ; 
 int /*<<< orphan*/  cmsNoLanguage ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigCopyrightTag ; 
 int /*<<< orphan*/  cmsSigProfileDescriptionTag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC6(cmsContext ContextID, cmsIOHANDLER* m, const char* Title, cmsHPROFILE hProfile)
{
    time_t timer;
    cmsMLU *Description, *Copyright;
    char DescASCII[256], CopyrightASCII[256];

    FUNC5(&timer);

    Description = (cmsMLU*) FUNC3(ContextID, hProfile, cmsSigProfileDescriptionTag);
    Copyright   = (cmsMLU*) FUNC3(ContextID, hProfile, cmsSigCopyrightTag);

    DescASCII[0] = DescASCII[255] = 0;
    CopyrightASCII[0] = CopyrightASCII[255] = 0;

    if (Description != NULL) FUNC2(ContextID, Description,  cmsNoLanguage, cmsNoCountry, DescASCII,       255);
    if (Copyright != NULL)   FUNC2(ContextID, Copyright,    cmsNoLanguage, cmsNoCountry, CopyrightASCII,  255);

    FUNC1(ContextID, m, "%%!PS-Adobe-3.0\n");
    FUNC1(ContextID, m, "%%\n");
    FUNC1(ContextID, m, "%% %s\n", Title);
    FUNC1(ContextID, m, "%% Source: %s\n", FUNC0(DescASCII));
    FUNC1(ContextID, m, "%%         %s\n", FUNC0(CopyrightASCII));
    FUNC1(ContextID, m, "%% Created: %s", FUNC4(&timer)); // ctime appends a \n!!!
    FUNC1(ContextID, m, "%%\n");
    FUNC1(ContextID, m, "%%%%BeginResource\n");

}