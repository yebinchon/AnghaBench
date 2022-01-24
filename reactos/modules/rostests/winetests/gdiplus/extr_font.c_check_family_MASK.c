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
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 int /*<<< orphan*/  FontStyleRegular ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(const char* context, GpFontFamily *family, WCHAR *name)
{
    GpStatus stat;
    GpFont* font;

    *name = 0;
    stat = FUNC3(family, name, LANG_NEUTRAL);
    FUNC4(stat == Ok, "could not get the %s family name: %.8x\n", context, stat);

    stat = FUNC0(family, 12, FontStyleRegular, UnitPixel, &font);
    FUNC4(stat == Ok, "could not create a font for the %s family: %.8x\n", context, stat);
    if (stat == Ok)
    {
        stat = FUNC1(font);
        FUNC4(stat == Ok, "could not delete the %s family font: %.8x\n", context, stat);
    }

    stat = FUNC2(family);
    FUNC4(stat == Ok, "could not delete the %s family: %.8x\n", context, stat);
}