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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * HRSRC ;
typedef  int /*<<< orphan*/ * HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ RT_BITMAP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HBITMAP bmp;
    HRSRC hres;

    bmp = FUNC3(FUNC2(NULL), FUNC4(100));
    FUNC5(bmp != NULL, "Could not load a bitmap resource\n");
    if (bmp) FUNC0(bmp);

    hres = FUNC1(FUNC2(NULL), "#100", (LPCSTR)RT_BITMAP);
    FUNC5(hres != NULL, "Could not find a bitmap resource with a numeric string\n");

    bmp = FUNC3(FUNC2(NULL), "#100");
    FUNC5(bmp != NULL, "Could not load a bitmap resource with a numeric string\n");
    if (bmp) FUNC0(bmp);
}