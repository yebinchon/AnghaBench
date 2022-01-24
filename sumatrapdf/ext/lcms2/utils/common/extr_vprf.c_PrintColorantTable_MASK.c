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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cmsMAX_PATH ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static
void FUNC5(cmsContext ContextID, cmsHPROFILE hInput, cmsTagSignature Sig, const char* Title)
{
    cmsNAMEDCOLORLIST* list;
    int i, n;

    if (FUNC0(ContextID, hInput, Sig)) {

        FUNC4("%s:\n", Title);

        list = (cmsNAMEDCOLORLIST*) FUNC3(ContextID, hInput, Sig);
        if (list == NULL) {
            FUNC4("(Unavailable)\n");
            return;
        }

        n = FUNC1(ContextID, list);
        for (i=0; i < n; i++) {

            char Name[cmsMAX_PATH];

            FUNC2(ContextID, list, i, Name, NULL, NULL, NULL, NULL);
            FUNC4("\t%s\n", Name);
        }

        FUNC4("\n");
    }

}