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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INTENT_ABSOLUTE_COLORIMETRIC ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static
void FUNC14(void)
{
    FUNC13("\n\nP E R F O R M A N C E   T E S T S\n");
    FUNC13(    "=================================\n\n");
    FUNC12(stdout);

    FUNC8("8 bits on CLUT profiles",
        FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "test3.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC2("16 bits on CLUT profiles",
        FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "test3.icc", "r"), INTENT_PERCEPTUAL);

    FUNC5("32 bits on CLUT profiles",
        FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "test3.icc", "r"), INTENT_PERCEPTUAL);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC8("8 bits on Matrix-Shaper profiles",
        FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC2("16 bits on Matrix-Shaper profiles",
       FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC5("32 bits on Matrix-Shaper profiles",
       FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC8("8 bits on SAME Matrix-Shaper profiles",
        FUNC11(FUNC1(), "test5.icc", "r"),
        FUNC11(FUNC1(), "test5.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC2("16 bits on SAME Matrix-Shaper profiles",
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC5("32 bits on SAME Matrix-Shaper profiles",
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC8("8 bits on Matrix-Shaper profiles (AbsCol)",
       FUNC11(FUNC1(), "test5.icc", "r"),
       FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    FUNC2("16 bits on Matrix-Shaper profiles (AbsCol)",
       FUNC11(FUNC1(), "test5.icc", "r"),
       FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    FUNC5("32 bits on Matrix-Shaper profiles (AbsCol)",
       FUNC11(FUNC1(), "test5.icc", "r"),
       FUNC11(FUNC1(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC8("8 bits on curves",
        FUNC0(),
        FUNC0(),
        INTENT_PERCEPTUAL);

    FUNC2("16 bits on curves",
        FUNC0(),
        FUNC0(),
        INTENT_PERCEPTUAL);

    FUNC5("32 bits on curves",
        FUNC0(),
        FUNC0(),
        INTENT_PERCEPTUAL);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC9("8 bits on CMYK profiles",
        FUNC11(FUNC1(), "test1.icc", "r"),
        FUNC11(FUNC1(), "test2.icc", "r"));

    FUNC3("16 bits on CMYK profiles",
        FUNC11(FUNC1(), "test1.icc", "r"),
        FUNC11(FUNC1(), "test2.icc", "r"));

    FUNC6("32 bits on CMYK profiles",
        FUNC11(FUNC1(), "test1.icc", "r"),
        FUNC11(FUNC1(), "test2.icc", "r"));

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC10("8 bits on gray-to gray",
        FUNC11(FUNC1(), "gray3lcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC4("16 bits on gray-to gray",
        FUNC11(FUNC1(), "gray3lcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC7("32 bits on gray-to gray",
        FUNC11(FUNC1(), "gray3lcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC10("8 bits on gray-to-lab gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC4("16 bits on gray-to-lab gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC7("32 bits on gray-to-lab gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    FUNC13("\n");

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    FUNC10("8 bits on SAME gray-to-gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    FUNC4("16 bits on SAME gray-to-gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    FUNC7("32 bits on SAME gray-to-gray",
        FUNC11(FUNC1(), "graylcms2.icc", "r"),
        FUNC11(FUNC1(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    FUNC13("\n");
}