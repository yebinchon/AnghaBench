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
typedef  int /*<<< orphan*/  cmsInfoType ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static
void FUNC5(cmsContext ContextID, cmsHPROFILE h, cmsInfoType Info)
{
    char* text;
    int len;

    len = FUNC0(ContextID, h, Info, "en", "US", NULL, 0);
    if (len == 0) return;

    text = (char*) FUNC2(len * sizeof(char));
    if (text == NULL) return;

    FUNC0(ContextID, h, Info, "en", "US", text, len);

    if (FUNC4(text) > 0)
        FUNC3("%s\n", text);

    FUNC1(text);
}