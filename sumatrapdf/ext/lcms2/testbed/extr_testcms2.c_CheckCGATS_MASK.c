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
typedef  int /*<<< orphan*/ * cmsHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NPOINTS_IT8 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC18(void)
{
    cmsHANDLE  it8;
    cmsInt32Number i;

    FUNC1("IT8 creation");
    it8 = FUNC2(FUNC0());
    if (it8 == NULL) return 0;

    FUNC15(FUNC0(), it8, "LCMS/TESTING");
    FUNC13(FUNC0(), it8, "ORIGINATOR",   "1 2 3 4");
    FUNC14(FUNC0(), it8, "DESCRIPTOR",   "1234");
    FUNC13(FUNC0(), it8, "MANUFACTURER", "3");
    FUNC11(FUNC0(), it8, "CREATED",      4);
    FUNC11(FUNC0(), it8, "SERIAL",       5);
    FUNC12(FUNC0(), it8, "MATERIAL",     0x123);

    FUNC11(FUNC0(), it8, "NUMBER_OF_SETS", NPOINTS_IT8);
    FUNC11(FUNC0(), it8, "NUMBER_OF_FIELDS", 4);

    FUNC8(FUNC0(), it8, 0, "SAMPLE_ID");
    FUNC8(FUNC0(), it8, 1, "RGB_R");
    FUNC8(FUNC0(), it8, 2, "RGB_G");
    FUNC8(FUNC0(), it8, 3, "RGB_B");

    FUNC1("Table creation");
    for (i=0; i < NPOINTS_IT8; i++) {

          char Patch[20];

          FUNC17(Patch, "P%d", i);

          FUNC9(FUNC0(), it8, i, 0, Patch);
          FUNC10(FUNC0(), it8, i, 1, i);
          FUNC10(FUNC0(), it8, i, 2, i);
          FUNC10(FUNC0(), it8, i, 3, i);
    }

    FUNC1("Save to file");
    FUNC7(FUNC0(), it8, "TEST.IT8");
    FUNC3(FUNC0(), it8);

    FUNC1("Load from file");
    it8 = FUNC6(FUNC0(), "TEST.IT8");
    if (it8 == NULL) return 0;

    FUNC1("Save again file");
    FUNC7(FUNC0(), it8, "TEST.IT8");
    FUNC3(FUNC0(), it8);


    FUNC1("Load from file (II)");
    it8 = FUNC6(FUNC0(), "TEST.IT8");
    if (it8 == NULL) return 0;


     FUNC1("Change prop value");
    if (FUNC5(FUNC0(), it8, "DESCRIPTOR") != 1234) {

        return 0;
    }


    FUNC11(FUNC0(), it8, "DESCRIPTOR", 5678);
    if (FUNC5(FUNC0(), it8, "DESCRIPTOR") != 5678) {

        return 0;
    }

     FUNC1("Positive numbers");
    if (FUNC4(FUNC0(), it8, "P3", "RGB_G") != 3) {

        return 0;
    }


     FUNC1("Positive exponent numbers");
     FUNC11(FUNC0(), it8, "DBL_PROP", 123E+12);
     if ((FUNC5(FUNC0(), it8, "DBL_PROP") - 123E+12) > 1 ) {

        return 0;
    }

    FUNC1("Negative exponent numbers");
    FUNC11(FUNC0(), it8, "DBL_PROP_NEG", 123E-45);
     if ((FUNC5(FUNC0(), it8, "DBL_PROP_NEG") - 123E-45) > 1E-45 ) {

        return 0;
    }


    FUNC1("Negative numbers");
    FUNC11(FUNC0(), it8, "DBL_NEG_VAL", -123);
    if ((FUNC5(FUNC0(), it8, "DBL_NEG_VAL")) != -123 ) {

        return 0;
    }

    FUNC3(FUNC0(), it8);

    FUNC16("TEST.IT8");
    return 1;

}