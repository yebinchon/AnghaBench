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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OutFile ; 
 int /*<<< orphan*/  cInProf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 

__attribute__((used)) static
void FUNC6(cmsContext ContextID)
{
	cmsHPROFILE hProfile = FUNC0(ContextID, cInProf);
	size_t n;
	char* Buffer;

	if (hProfile == NULL) return;

	n = FUNC2(ContextID, hProfile, Intent, 0, NULL, 0);
	if (n == 0) return;

    Buffer = (char*) FUNC5(n + 1);
    if (Buffer != NULL) {

        FUNC2(ContextID, hProfile, Intent, 0, Buffer, (cmsUInt32Number) n);
        Buffer[n] = 0;

        FUNC3(OutFile, "%s", Buffer);

        FUNC4(Buffer);
    }

	FUNC1(ContextID, hProfile);
}