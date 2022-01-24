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
typedef  int /*<<< orphan*/  itsName ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;

/* Variables and functions */
 scalar_t__ FontFamilyNotFound ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidParameter ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int LF_FACESIZE ; 
 int /*<<< orphan*/  MSSansSerif ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  Tahoma ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nonexistent ; 

__attribute__((used)) static void FUNC7 (void)
{
    GpFontFamily *family, *clonedFontFamily;
    WCHAR itsName[LF_FACESIZE];
    GpStatus stat;

    /* FontFamily cannot be NULL */
    stat = FUNC1 (Tahoma , NULL, NULL);
    FUNC5 (InvalidParameter, stat);

    /* FontFamily must be able to actually find the family.
     * If it can't, any subsequent calls should fail.
     */
    stat = FUNC1 (nonexistent, NULL, &family);
    FUNC5 (FontFamilyNotFound, stat);

    /* Bitmap fonts are not found */
    stat = FUNC1 (MSSansSerif, NULL, &family);
    FUNC5 (FontFamilyNotFound, stat);
    if(stat == Ok) FUNC2(family);

    stat = FUNC1 (Tahoma, NULL, &family);
    FUNC5 (Ok, stat);

    stat = FUNC3 (family, itsName, LANG_NEUTRAL);
    FUNC5 (Ok, stat);
    FUNC5 (0, FUNC6(itsName, Tahoma));

    if (0)
    {
        /* Crashes on Windows XP SP2, Vista, and so Wine as well */
        stat = FUNC3 (family, NULL, LANG_NEUTRAL);
        FUNC5 (Ok, stat);
    }

    /* Make sure we don't read old data */
    FUNC4 (itsName, sizeof(itsName));
    stat = FUNC0(family, &clonedFontFamily);
    FUNC5 (Ok, stat);
    FUNC2(family);
    stat = FUNC3(clonedFontFamily, itsName, LANG_NEUTRAL);
    FUNC5(Ok, stat);
    FUNC5(0, FUNC6(itsName, Tahoma));

    FUNC2(clonedFontFamily);
}