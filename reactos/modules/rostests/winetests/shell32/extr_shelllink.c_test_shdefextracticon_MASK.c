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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HICON hiconlarge=NULL, hiconsmall=NULL;
    HRESULT res;

    if (!&pSHDefExtractIconA)
    {
        FUNC5("SHDefExtractIconA is unavailable\n");
        return;
    }

    res = FUNC4("shell32.dll", 0, 0, &hiconlarge, &hiconsmall, FUNC1(16,24));
    FUNC3(FUNC2(res), "SHDefExtractIconA failed, res=%x\n", res);
    FUNC3(hiconlarge != NULL, "got null hiconlarge\n");
    FUNC3(hiconsmall != NULL, "got null hiconsmall\n");
    FUNC0(hiconlarge);
    FUNC0(hiconsmall);

    hiconsmall = NULL;
    res = FUNC4("shell32.dll", 0, 0, NULL, &hiconsmall, FUNC1(16,24));
    FUNC3(FUNC2(res), "SHDefExtractIconA failed, res=%x\n", res);
    FUNC3(hiconsmall != NULL, "got null hiconsmall\n");
    FUNC0(hiconsmall);

    res = FUNC4("shell32.dll", 0, 0, NULL, NULL, FUNC1(16,24));
    FUNC3(FUNC2(res), "SHDefExtractIconA failed, res=%x\n", res);
}