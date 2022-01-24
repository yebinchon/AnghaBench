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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(cmsHPROFILE h, const char* SubTestTxt, const char* FileName)
{
    FUNC1(SubTestTxt);
    if (h == NULL) return 0;

    if (!FUNC4(FUNC0(), h, FileName)) return 0;
    FUNC2(FUNC0(), h);

    h = FUNC3(FUNC0(), FileName, "r");
    if (h == NULL) return 0;

    FUNC2(FUNC0(), h);
    return 1;
}